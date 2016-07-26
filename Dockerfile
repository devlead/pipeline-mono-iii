FROM debian:jessie

RUN apt-get update \
        && apt-get install --fix-missing -y curl \
	&& rm -rf /var/lib/apt/lists/*

RUN apt-get update \
        && apt-get install --fix-missing -y mono-devel

RUN mono --version
