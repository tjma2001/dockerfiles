#!/bin/bash
VERSION=$(cat rust/VERSION)
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push tensaibankai/rust:${VERSION}
docker push tensaibankai/rust:latest
docker push tensaibankai/node:${VERSION}
docker push tensaibankai/node:latest