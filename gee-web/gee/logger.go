package gee

import (
	"log"
	"time"
)

func Logger() HandlerFunc {
	return func(context *Context) {
		t := time.Now()
		context.Next()
		log.Printf("[%d] %s in %v ", context.StatusCode, context.Req.URL, time.Since(t))
	}
}
