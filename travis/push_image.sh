#!/bin/sh


push_image() {
  docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
  mvn clean package docker:build
  docker push skywalking/sky-walking-ui:latest
  docker push skywalking/sky-walking-ui:3.0.1
}


push_image
echo "Push is Done!"