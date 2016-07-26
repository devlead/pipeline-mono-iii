FROM debian:jessie

RUN apt-get update

RUN apt-get install -y curl

RUN apt-get install -y mono-devel=3.2.8 ca-certificates-mono=3.2.8

RUN mozroots --import --sync

RUN mono --version
