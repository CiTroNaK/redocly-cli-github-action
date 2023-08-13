#!/bin/sh
set -e
set -o pipefail

cd /github/workspace

echo "redocly version: $(redocly --version)"

output=$(redocly $1)

echo "output<<$EOF" >> $GITHUB_OUTPUT
echo "$output" >> $GITHUB_OUTPUT
echo "$EOF" >> $GITHUB_OUTPUT
