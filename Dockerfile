FROM nginx:alpine

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
      sudo \
      curl \
      vim

ADD ./site /www/docs/

ADD default.conf /etc/nginx/conf.d/default.conf
