#!/usr/bin/env bash
set -xeuo pipefail

expected='!SUTO ,olleH'
result=$(/tmp/docker-desktop-root/mnt/host/c/Program\ Files/Go/bin/go.exe run main.go | sed 's/^ *//;s/ *$//')
[ "${result}" = "${expected}" ] || (echo -e "invalid output: ${result}" && exit 1)

echo "PASS"
