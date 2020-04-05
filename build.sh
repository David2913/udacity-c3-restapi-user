#!/bin/bash
set -ev

echo "Backend user service"

if [ "$BUILD_ENV" == "production" ]; then
  echo "Building production image: dzarate/udacity-c3-restapi-user:latest"
  docker build -t dzarate/udacity-c3-restapi-user:latest .
else
  echo "Building development image: dzarate/udacity-c3-restapi-user:latest-dev"
  docker build -t dzarate/udacity-c3-restapi-user:latest-dev .
fi
