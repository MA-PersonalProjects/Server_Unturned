FROM ubuntu:18.04

LABEL MAINTAINER "Maxime Aubanel<maximeauba@gmail.com>"

RUN useradd -ms /bin/bash untserver

WORKDIR /home/untserver

RUN apt-get update && \
    apt-get clean && \
    \
    dpkg --add-architecture i386 && apt update && apt install file bsdmainutils wget curl python3 unzip binutils bc jq tmux lib32gcc1 libstdc++6:i386 -y

USER untserver

RUN yes Y | wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh untserver && \
    ./untserver auto-install