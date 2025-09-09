#!/bin/bash

echo "***************************************************"
echo "** Testing the code ***********************************"
echo "***************************************************"


docker run --rm   -v "$PWD/java-app":/app   -v "$HOME/.m2":/root/.m2   -w /app   maven:latest "$@"


