package main

import (
	"log"
	"net/http"

	"github.com/go-chi/chi/v5"
	"gorm.io/gorm"
)

type App struct {
	r  *chi.Mux
	db *gorm.DB
}

func main() {

	app := App{}

	app.r = initHandlers()
	app.db = initDB()

	// start a http server
	log.Fatal(http.ListenAndServe(":8080", app.r))

}
