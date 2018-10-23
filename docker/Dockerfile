FROM debian:stable-slim

WORKDIR /usr/src

RUN apt-get update
RUN apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common \
        gnupg

RUN curl -f https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        xenial \
        stable"

RUN apt-get update
RUN apt-get install -y curl docker-ce