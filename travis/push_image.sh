#!/bin/sh

IMAGE_VERSION=3.1-2017
docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
mvn clean package docker:build
docker push skywalking/sky-walking-ui:latest
docker push skywalking/sky-walking-ui:${IMAGE_VERSION}
