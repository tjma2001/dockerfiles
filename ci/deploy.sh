#!/bin/bash

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

VERSION=$(cat rust/VERSION)
docker push tensaibankai/rust:${VERSION}
docker push tensaibankai/rust:latest

VERSION=$(cat node/VERSION)
docker push tensaibankai/node:${VERSION}
docker push tensaibankai/node:latest