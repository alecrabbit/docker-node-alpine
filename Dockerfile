FROM node:lts-alpine

ENV PATH /scripts:/scripts/aliases:$PATH

RUN set -xe \
    && apk add --no-cache bash git openssh \
    && npm install -g npm \
    && git --version && bash --version && ssh -V && npm -v && node -v && yarn -v

COPY ./keep-alive.sh /scripts/keep-alive.sh
COPY ./aliases/* /scripts/aliases/
WORKDIR /usr/src/app

