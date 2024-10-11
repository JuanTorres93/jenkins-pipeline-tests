#!/bin/bash

echo "**************************"
echo "Testing the Maven project"
echo "**************************"

docker run --rm -w /app \
    --name maven \
    --ulimit nofile=122880:122880 \
    -v $PWD/simple-java-maven-app:/app \
    -v $PWD/build-from-container:/root/.m2 \
    maven:3.9.2 "$@"