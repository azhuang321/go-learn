package routers

import (
	"github.com/azhuang321/go-gin-example/middleware/jwt"
	"github.com/azhuang321/go-gin-example/pkg/setting"
	"github.com/azhuang321/go-gin-example/routers/api"
	v1 "github.com/azhuang321/go-gin-example/routers/api/v1"
	"github.com/gin-gonic/gin"
)

func InitRouter() *gin.Engine {
	r := gin.New()
	r.Use(gin.Logger())
	r.Use(gin.Recovery())
	gin.SetMode(setting.RunMode)

	r.GET("/auth", api.GetAuth)

	apiV1 := r.Group("/api/v1")
	apiV1.Use(jwt.JWT())
	{
		apiV1.GET("/tags", v1.GetTags)
		apiV1.POST("/tags", v1.AddTags)
		apiV1.PUT("/tags/:id", v1.EditTags)
		apiV1.DELETE("/tags/:id", v1.DeleteTags)
	}

	return r
}
