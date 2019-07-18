FROM docker:stable

MAINTAINER Steven.Li <xz.li@outlook.com>

RUN apk --update add \
    git \
    python \
    py-pip \
    jq \
    && pip install awscli \
    && apk del py-pip \
    && rm -rf /var/cache/apk/*