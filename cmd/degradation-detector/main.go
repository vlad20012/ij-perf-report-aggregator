package main

import (
  "context"
  "fmt"
  "log"
  "math"
  "os"
  "sync"
)

type AnalysisSettings struct {
  test    string
  metric  string
  db      string
  table   string
  channel string
}

func main() {
  backendUrl := os.Getenv("BACKEND_URL")
  if len(backendUrl) == 0 {
    log.Printf("BACKEND_URL is not set, using default value: %s", backendUrl)
    backendUrl = "http://localhost:9044"
  }

  var wg sync.WaitGroup
  analysisSettings := generateIdeaAnalysisSettings()
  for _, analysisSetting := range analysisSettings {
    ctx := context.Background()

    timestamps, values, builds, err := getDataFromClickhouse(ctx, backendUrl, analysisSetting)
    if err != nil {
      log.Printf("%v", err)
    }

    degradations := inferDegradations(values, builds, timestamps)

    insertionResults := postDegradation(ctx, backendUrl, analysisSetting, degradations)

    for _, result := range insertionResults {
      if result.error != nil {
        log.Printf("%v", result.error)
        continue
      }
      if !result.wasInserted {
        continue
      }
      wg.Add(1)
      go func(result InsertionResults, setting AnalysisSettings) {
        defer wg.Done()
        err := sendSlackMessage(ctx, result.degradation, setting)
        if err != nil {
          log.Printf("%v", err)
        }
      }(result, analysisSetting)
    }
  }
  wg.Wait()
}

func getMessageBasedOnMedianChange(medianValues MedianValues) string {
  percentageChange := math.Abs((medianValues.newValue - medianValues.previousValue) / medianValues.previousValue * 100)
  medianMessage := fmt.Sprintf("Median changed by: %.2f%%. Median was %.2f and now it is %.2f.", percentageChange, medianValues.previousValue, medianValues.newValue)
  if medianValues.newValue > medianValues.previousValue {
    return "Degradation detected. " + medianMessage
  }
  return "Improvement detected. " + medianMessage
}
