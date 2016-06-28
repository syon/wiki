build: node_modules
	node build

node_modules: package.json
	npm install

serve: wiki
	node serve

.PHONY: build
