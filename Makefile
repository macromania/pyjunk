# Make exit on the first error for all commands by default
.SHELLFLAGS = -e -c 

.PHONY: help restore restore-frontend restore-backend run-app run-api lint-app lint-api format-app format-api test build provision clean
.DEFAULT_GOAL := help

help: ## Show this help message
	@grep -E '[a-zA-Z_-]+:.*?## .*$$' $(firstword $(MAKEFILE_LIST)) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-23s\033[0m %s\n", $$1, $$2}'


restore: ## Install all dependencies (frontend and backend)
	@./scripts/restore.sh

provision: ## Provision the infrastructure using Terraform
	@./scripts/provision.sh

generate-env: ## Generate .env file from Terraform outputs
	@./scripts/generate-env.sh

run-app: ## Run the main application
	@poetry run python src/main.py