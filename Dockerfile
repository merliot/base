# syntax=docker/dockerfile:1

# Debian GNU/Linux 12 (bookworm)
FROM golang:1.23.4

RUN wget https://github.com/tinygo-org/tinygo/releases/download/v0.35.0/tinygo_0.35.0_amd64.deb
RUN dpkg -i tinygo_0.35.0_amd64.deb

RUN apt-get update
RUN apt-get install vim tree bc ffmpeg -y
