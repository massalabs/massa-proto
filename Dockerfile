FROM alpine:latest

RUN apk update && apk upgrade
RUN apk --update add bash protoc curl protobuf-dev && rm -rf /var/cache/apk/*

RUN curl -sSL \
    "https://github.com/bufbuild/buf/releases/download/v1.22.0/buf-$(uname -s)-$(uname -m)" \
    -o "/usr/bin/buf" && \
    chmod +x "/usr/bin/buf"

COPY lib/protoc-gen-doc /usr/bin/
WORKDIR /opt
CMD ["bash", "build.sh"]
