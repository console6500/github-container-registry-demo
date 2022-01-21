BUILD_NAME  ?= simple
BUILD_TAG   ?= $(shell git rev-parse --short HEAD)

build:
	docker build --progress=plain --tag $(BUILD_NAME):$(BUILD_TAG) .

run: build
	docker run --rm $(BUILD_NAME):$(BUILD_TAG)

test:
	@docker run --rm $(BUILD_NAME):$(BUILD_TAG) \
		| grep 'This is a simple python script called from a container image.' \
		&& echo "TEST PASSED! :D"

github:
	@docker run --rm ghcr.io/console6500/use-github-container-registry:main \
		| grep 'This is a simple python script called from a container image.' \
		&& echo "TEST PASSED! :D"

exec:
	docker exec -it $(BUILD_NAME) bash
