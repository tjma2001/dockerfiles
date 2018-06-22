#!/bin/bash

export DOCKER_PASSWORD="$(gcloud auth application-default print-access-token)"

./klar.sh