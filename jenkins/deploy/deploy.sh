#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

echo "=== Deploy Started ==="

scp -i /opt/prod /tmp/.auth produser@16.176.34.5:/tmp/.auth

scp -i /opt/prod ./jenkins/deploy/publish produser@16.176.34.5:/tmp/publish

ssh -i /opt/prod produser@16.176.34.5 "/tmp/publish"

echo "=== Deploy Finished ==="

