FROM atlassian/default-image:latest

RUN apt-get update \
	&& apt-get install -y curl \
	&& rm -rf /var/lib/apt/lists/*

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

RUN echo "deb http://httpredir.debian.org/debian jessie main" > /etc/apt/sources.list.d/mono-xamarin.list \
	&& echo "deb http://security.debian.org/ jessie/updates main" | sudo tee -a /etc/apt/sources.list.d/mono-xamarin-security.list \
	&& apt-get update \
	&& apt-get install -y mono-devel=version3.2.8 ca-certificates-mono=version3.2.8 \
	&& rm -rf /var/lib/apt/lists/*

RUN mozroots --import --sync

RUN mono --version
