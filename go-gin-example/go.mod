module github.com/azhuang321/go-gin-example

go 1.15

require (
	github.com/astaxie/beego v1.12.2
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/fvbock/endless v0.0.0-20170109170031-447134032cb6 // indirect
	github.com/gin-gonic/gin v1.6.3
	github.com/go-ini/ini v1.62.0
	github.com/shiena/ansicolor v0.0.0-20200904210342-c7312218db18 // indirect
	github.com/unknwon/com v1.0.1
	gopkg.in/ini.v1 v1.62.0 // indirect
	gorm.io/driver/mysql v1.0.2
	gorm.io/gorm v1.20.3
)

replace (
	github.com/azhuang321/go-gin-example/conf => /User/azhuang/program/code-go/src/go-gin-example/conf
	github.com/azhuang321/go-gin-example/middleware => /User/azhuang/program/code-go/src/go-gin-example/middleware
	github.com/azhuang321/go-gin-example/models => /User/azhuang/program/code-go/src/go-gin-example/models
	github.com/azhuang321/go-gin-example/pkg/e => /User/azhuang/program/code-go/src/go-gin-example/pkg/e
	github.com/azhuang321/go-gin-example/pkg/setting => /User/azhuang/program/code-go/src/go-gin-example/pkg/setting
	github.com/azhuang321/go-gin-example/pkg/util => /User/azhuang/program/code-go/src/go-gin-example/pkg/util
	github.com/azhuang321/go-gin-example/routers => /User/azhuang/program/code-go/src/go-gin-example/routers
)
