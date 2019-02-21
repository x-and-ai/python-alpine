ARG ALPINE_VERSION=3.9

FROM alpine:${ALPINE_VERSION}

ARG PYTHON3_VERSION='3.6.8-r1'

RUN apk add --no-cache python3=${PYTHON3_VERSION} &&\
    ln -s /usr/bin/python3 /usr/bin/python &&\
    ln -s /usr/bin/pip3 /usr/bin/pip &&\
    pip install --upgrade --no-cache-dir pip setuptools
