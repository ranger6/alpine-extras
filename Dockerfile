FROM alpine:3.13

MAINTAINER ranger6 <ranger6@gmail.com>

RUN \
    apk update && apk add bash git jq
