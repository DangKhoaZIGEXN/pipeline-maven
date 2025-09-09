#!/bin/bash

echo "***************************************************"
echo "** Building jar ***********************************"
echo "***************************************************"


docker run --rm   -v "$PWD/java-app":/app   -v "$HOME/.m2":/root/.m2   -w /app   maven:latest "$@"


