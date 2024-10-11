#!/bin/bash

echo "**************************"
echo "Building the Maven project"
echo "**************************"

WORKSPACE=/var/jenkins_home/workspace/pipeline-docker-maven

echo "WORKSPACE: $WORKSPACE"

docker run --rm -w /app \
    --name maven \
    --ulimit nofile=122880:122880 \
    -v $WORKSPACE/simple-java-maven-app:/app \
    -v $WORKSPACE/build-from-container:/root/.m2 \
    maven:3.9.2 "$@"