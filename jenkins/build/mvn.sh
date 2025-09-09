#!/bin/bash

echo "***************************************************"
echo "** Building jar ***********************************"
echo "***************************************************"

WORKSPACE=/home/khoand/jenkins-data/jenkins_home/workspace/pipeline-docker-mavenpi
docker run --rm   -v "$WORKSPACE/java-app":/app   -v /home/khoand/jenkins-data/jenkins_home/.m2:/root/.m2   -w /app   maven:latest "$@"


