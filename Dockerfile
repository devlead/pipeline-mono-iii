FROM debian:jessie

RUN apt-get update

RUN apt-get install -y curl

RUN apt-get install -y mono-devel

RUN mono --version
