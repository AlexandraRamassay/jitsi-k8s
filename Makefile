default: help

bootstrap: ## Bootstrap the jitsi-k8s project
bootstrap: \
	env.d/terraform
.PHONY: bootstrap

env.d/terraform:
	cp env.d/terraform.dist env.d/terraform

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.PHONY: help