#!/bin/bash
VERSION=$(cat rust/VERSION)
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push tensaibankai/rust:${VERSION}