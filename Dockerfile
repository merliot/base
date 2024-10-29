# syntax=docker/dockerfile:1

# Debian GNU/Linux 12 (bookworm)
FROM golang:1.23.2

RUN wget https://github.com/tinygo-org/tinygo/releases/download/v0.34.0/tinygo_0.34.0_amd64.deb
RUN dpkg -i tinygo_0.34.0_amd64.deb

RUN apt-get update
RUN apt-get install vim tree bc -y
