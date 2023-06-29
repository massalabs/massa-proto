FROM alpine:latest

RUN apk update && apk upgrade
RUN apk --update add bash protoc curl protobuf-dev && rm -rf /var/cache/apk/*

WORKDIR /tmp
# install buf
RUN curl -sSL \
    "https://github.com/bufbuild/buf/releases/download/v1.22.0/buf-$(uname -s)-$(uname -m)" \
    -o "/usr/bin/buf" && \
    chmod +x "/usr/bin/buf"

# install protoc-gen-doc
RUN curl -sSL \
    "https://github.com/pseudomuto/protoc-gen-doc/releases/download/v1.5.1/protoc-gen-doc_1.5.1_linux_amd64.tar.gz" \
    --output protoc-gen-doc_1.5.1_linux_amd64.tar.gz
RUN tar -xf ./protoc-gen-doc_1.5.1_linux_amd64.tar.gz
RUN cp  ./protoc-gen-doc /usr/bin/

WORKDIR /opt
CMD ["bash", "build.sh"]
