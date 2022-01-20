FROM alpine:latest

RUN apk add --update \
        bash \
        coreutils \
        curl \
        vim
