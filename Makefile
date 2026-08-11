# Chaos repo — depends on everything.
SHELL := /bin/bash

install:
	@echo "Installing all the things"
	-npm install
	-pip install -r requirements.txt
	-cargo fetch
	-go mod download
	-bundle install
	-composer install

test:
	-npm test
	-python -m pytest
	-cargo test
	-go test ./...

lint:
	-npx eslint .
	-pip install ruff && ruff check .
	-cargo fmt --check && cargo clippy
	-golangci-lint run

build:
	-npm run build
	-cargo build
	-go build ./...
	-mvn -q compile
	-./gradlew compileJava

fmt:
	-npx prettier --write .
	-black . || true
	-rustfmt --edition 2021 src/*.rs
	-gofmt -w .
	-clang-format -i src/*.c src/*.cpp src/*.h

bf:
	python3 tools/bf.py languages/brainfuck/hello.bf

count:
	python3 tools/count_deps.py

docker:
	docker build -t chaos .
	docker compose up -d

security:
	-pip install pip-audit bandit
	-pip-audit
	-bandit -r src tools
	-npm audit

release:
	npx semantic-release
