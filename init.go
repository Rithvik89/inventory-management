package main

import (
	"github.com/go-chi/chi/v5"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

func initHandlers() *chi.Mux {
	r := chi.NewRouter()
	r.Get("/spares", getSpares)

	return r
}

func initDB() *gorm.DB {
	db, _ := gorm.Open(postgres.Open("postgres://root:mypass123@localhost:5432/inventory"))

	return db
}
