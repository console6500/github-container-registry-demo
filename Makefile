BUILD_NAME  ?= simple
BUILD_TAG   ?= $(shell git rev-parse --short HEAD)

build:
	docker build --progress=plain --tag $(BUILD_NAME):$(BUILD_TAG) .
