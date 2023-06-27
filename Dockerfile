FROM docker-hub.uncharted.software/nginx:alpine

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
      sudo \
      curl \
      vim

ADD ./_site /www/docs/

ADD default.conf /etc/nginx/conf.d/default.conf
