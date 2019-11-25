module github.com/JetBrains/ij-perf-report-aggregator

go 1.13

require (
	facette.io/natsort v0.0.0-20181210072756-2cd4dd1e2dcb
	github.com/AlexAkulov/clickhouse-backup v0.5.1-0.20191028201248-08a1640b81ff
	github.com/ClickHouse/clickhouse-go v1.3.12
	github.com/VictoriaMetrics/fastcache v1.5.2
	github.com/alecthomas/kingpin v2.2.6+incompatible
	github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751 // indirect
	github.com/alecthomas/units v0.0.0-20190924025748-f65c72e2690d // indirect
	github.com/araddon/dateparse v0.0.0-20190622164848-0fb0a474d195
	github.com/asaskevich/govalidator v0.0.0-20190424111038-f61b66f89f4a
	github.com/aws/aws-sdk-go v1.25.41 // indirect
	github.com/cespare/xxhash v1.1.0
	github.com/cespare/xxhash/v2 v2.1.1 // indirect
	github.com/deanishe/go-env v0.4.0
	github.com/develar/errors v0.9.0
	github.com/jmoiron/sqlx v1.2.0
	github.com/json-iterator/go v1.1.8
	github.com/kelseyhightower/envconfig v1.4.0
	github.com/magiconair/properties v1.8.1
	github.com/mattn/go-sqlite3 v2.0.0+incompatible // indirect
	github.com/mcuadros/go-version v0.0.0-20190830083331-035f6764e8d2
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	github.com/nats-io/jwt v0.3.2 // indirect
	github.com/nats-io/nats-server/v2 v2.1.0 // indirect
	github.com/nats-io/nats.go v1.9.1
	github.com/olekukonko/tablewriter v0.0.3
	github.com/panjf2000/ants/v2 v2.2.2
	github.com/pkg/errors v0.8.1
	github.com/robfig/cron/v3 v3.0.0
	github.com/rs/cors v1.7.0
	github.com/stretchr/testify v1.4.0
	github.com/tdewolff/minify/v2 v2.5.2
	github.com/tdewolff/parse/v2 v2.3.11 // indirect
	github.com/valyala/bytebufferpool v1.0.0
	github.com/valyala/fastjson v1.4.1
	github.com/valyala/quicktemplate v1.4.1
	go.uber.org/atomic v1.5.1
	go.uber.org/multierr v1.4.0
	go.uber.org/zap v1.13.0
	golang.org/x/crypto v0.0.0-20191122220453-ac88ee75c92c // indirect
	golang.org/x/net v0.0.0-20191125084936-ffdde1057850 // indirect
	golang.org/x/oauth2 v0.0.0-20191122200657-5d9234df094c // indirect
	golang.org/x/sys v0.0.0-20191120155948-bd437916bb0e // indirect
	golang.org/x/tools v0.0.0-20191125011157-cc15fab314e3 // indirect
	gopkg.in/sakura-internet/go-rison.v3 v3.1.0
	gopkg.in/yaml.v2 v2.2.7 // indirect
)

replace github.com/mattn/go-sqlite3 => github.com/mattn/go-sqlite3 v1.11.1-0.20191105054421-67c1376b46fb

replace github.com/AlexAkulov/clickhouse-backup => github.com/develar/clickhouse-backup v0.4.3-0.20191119202234-e508b07c24c7
