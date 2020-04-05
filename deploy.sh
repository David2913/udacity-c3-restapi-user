#!/bin/bash
set -ev

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

if [ "$BUILD_ENV" == "production" ]; then
  echo "Deploying production image: dzarate/udacity-c3-restapi-user:latest"
  docker push dzarate/udacity-c3-restapi-user:latest
else
  echo "Deploying development image: dzarate/udacity-c3-restapi-user:latest-dev"
  docker push dzarate/udacity-c3-restapi-user:latest-dev
fi
