BUILD_NAME  ?= simple
BUILD_TAG   ?= $(shell git rev-parse --short HEAD)

build:
	docker build --progress=plain --tag $(BUILD_NAME):$(BUILD_TAG) .

run:
	docker run $(BUILD_NAME):$(BUILD_TAG)

exec:
	docker exec -it $(BUILD_NAME) bash
