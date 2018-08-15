FROM debian:stable-slim

WORKDIR /usr/src
RUN mkdir -p /usr/share/man/man1
RUN apt-get update
RUN apt-get install -y wget xz-utils git android-sdk lib32stdc++6

RUN wget --quiet -output https://storage.googleapis.com/flutter_infra/releases/beta/linux/flutter_linux_v0.5.1-beta.tar.xz \
    && tar xf flutter_linux_v0.5.1-beta.tar.xz \
    && mv flutter /usr/lib \
    && rm flutter_linux_v0.5.1-beta.tar.xz

ENV PATH="/usr/lib/flutter/bin:${PATH}"

RUN wget --quiet -output https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip \
    && unzip sdk-tools-linux-4333796.zip \
    && cp -a tools/bin/* /usr/lib/android-sdk/tools/bin/ \
    && rm -rf tools \
    && rm sdk-tools-linux-4333796.zip
