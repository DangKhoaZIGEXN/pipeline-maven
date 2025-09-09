#!/bin/bash

# copy the new jar

cp -f java-app/target/*.jar jenkins/build/

echo "*******************************************************"
echo "Building docker images"
echo "*******************************************************"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
