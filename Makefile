.PHONY: build clean test run

APP_NAME := ghpra
BIN_DIR := bin

build: test
	go build -o $(BIN_DIR)/$(APP_NAME) cmd/*.go

clean:
	rm -rf $(BIN_DIR)

test:
	go test -v ./...

run:
	go run cmd/*.go
