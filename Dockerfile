FROM python:3.6.3-alpine3.4

RUN echo "http://mirrors.aliyun.com/alpine/v3.4/main/" | tee /etc/apk/repositories

WORKDIR /app

ADD ./ ./

RUN apk add --update \
    bash \
    mysql-dev \
    build-base \
    libxml2 \
  && pip install -r requirements.txt \
  && rm -rf /var/cache/apk/*
