FROM --platform=linux/amd64 openjdk:17-jdk-buster@sha256:9217da81dcff19e60861791511ce57c019e47eaf5ca40dc73defe454ba7ea320 AS muun_android_builder

ENV GO_VERSION 1.18.1

RUN apt-get update \
    && apt-get install --yes --no-install-recommends \
        unzip \
        wget \
        ca-certificates \
        curl \
        git \
        zip \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get -y install gcc mono-mcs

# install golang
RUN curl -L "https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz" \
	-o go${GO_VERSION}.linux-amd64.tar.gz && \
	tar -xvf go${GO_VERSION}.linux-amd64.tar.gz -C /usr/local/  && \
	rm -rf go${GO_VERSION}.linux-amd64.tar.gz

ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

FROM muun_android_builder AS build

WORKDIR /src
COPY . /src
RUN tools/bootstrap-gomobile.sh \
    && go clean \
    && go build

FROM scratch

COPY --from=build /src/libwallet-binary libwallet-binary
