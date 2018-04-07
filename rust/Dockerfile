FROM debian:stable-slim

RUN apt-get update
RUN apt-get install -y wget gcc

WORKDIR /usr/src

RUN wget -q https://static.rust-lang.org/dist/rust-1.25.0-x86_64-unknown-linux-gnu.tar.gz
RUN tar xzf rust-1.25.0-x86_64-unknown-linux-gnu.tar.gz

WORKDIR /usr/src/rust-1.25.0-x86_64-unknown-linux-gnu/
RUN ./install.sh

RUN cargo install cargo-watch