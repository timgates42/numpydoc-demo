
.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'
.DEFAULT_GOAL := help

.PHONY: build
build: ## Build the Docker Images
	mkdir -p output
	docker-compose build
	docker-compose up -d
	docker-compose run numpydoc-demo make _main
	docker-compose down
