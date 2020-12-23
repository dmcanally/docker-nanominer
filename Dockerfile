FROM ubuntu:18.04 as base

ARG VER
RUN \
    apt update -y && \
    apt install -yqq \
     ca-certificates \
     wget \
     curl \
     telnet \
     gpg \
     apt-transport-https &&\
    apt clean && \
    wget https://github.com/nanopool/nanominer/releases/download/v$VER/nanominer-linux-$VER.tar.gz && \
    tar xzvf nanominer-linux-$VER.tar.gz && \
    mv nanominer-linux-$VER nanominer

WORKDIR /nanominer

CMD ["/nanominer/nanominer","/nanominer/config.ini"]