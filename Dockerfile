FROM ubuntu:26.04

RUN apt-get update && apt-get install -y --no-install-recommends     build-essential curl wget git ca-certificates     python3 python3-pip nodejs npm ruby ruby-bundler golang rustc cargo     openjdk-21-jdk-headless maven gradle php-cli clang cmake ninja-build     && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

RUN npm install --no-audit --no-fund || true     && pip3 install --no-cache-dir -r requirements.txt || true     && cargo check --quiet || true     && go mod download || true

CMD ["python3", "tools/bf.py", "languages/brainfuck/hello.bf"]
