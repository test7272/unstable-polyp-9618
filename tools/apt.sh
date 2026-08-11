#!/bin/sh
# Debian / Ubuntu (APT, dpkg)
set -e
apt-get update
apt-get install -y build-essential curl wget git python3 python3-pip nodejs npm ruby ruby-bundler golang cargo php-cli composer openjdk-21-jdk-headless maven gradle cmake ninja-build pkg-config libssl-dev
