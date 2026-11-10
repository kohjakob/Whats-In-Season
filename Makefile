ENV := whats-in-season-web-app
RUN := conda run --no-capture-output -n $(ENV)

.PHONY: setup run deploy

setup:
	conda env update -n $(ENV) -f environment.yml --prune
	$(RUN) npm install -g pnpm@10
	$(RUN) pnpm install --frozen-lockfile

run:
	$(RUN) pnpm dev

deploy:
	$(RUN) scripts/deploy.sh
