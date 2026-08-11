#!/bin/sh
# Fedora / RHEL (DNF, RPM)
set -e
dnf install -y gcc gcc-c++ make git curl wget python3 python3-pip nodejs npm ruby rubygem-bundler golang rust cargo php php-cli composer java-21-openjdk-devel maven gradle cmake ninja-build openssl-devel
