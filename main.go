package main

import (
	"cicd-practice/app"
	"io"
	"os"

	"github.com/gin-gonic/gin"
)

func setupRouter() *gin.Engine {
	r := gin.Default()
	f, _ := os.Create("gin.log")
	gin.DefaultWriter = io.MultiWriter(f)

	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, app.Add(3, 5))
	})
	return r
}

func main() {
	r := setupRouter()
	r.Run(":8080")
}
