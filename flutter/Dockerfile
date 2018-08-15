FROM debian:stable-slim

WORKDIR /usr/src

RUN apt-get update
RUN apt-get install -y wget xz-utils git
RUN wget https://storage.googleapis.com/flutter_infra/releases/beta/linux/flutter_linux_v0.5.1-beta.tar.xz
RUN tar xf flutter_linux_v0.5.1-beta.tar.xz
RUN mv flutter /usr/lib
RUN rm flutter_linux_v0.5.1-beta.tar.xz
ENV PATH="/usr/lib/flutter/bin:${PATH}"
RUN flutter doctor
