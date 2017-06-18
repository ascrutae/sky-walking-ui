IMAGE_VERSION=3.1-2017
docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"
mvn clean package docker:build
docker push skywalking/skywalking-webui:latest
docker push skywalking/skywalking-webui:${IMAGE_VERSION}
