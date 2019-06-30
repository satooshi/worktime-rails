FROM ruby:2.6.3-stretch

ENV LANG C.UTF-8
ENV APPDIR /usr/src/app
RUN mkdir -p $APPDIR $APPDIR/tmp/cache $APPDIR/tmp/pids $APPDIR/tmp/sockets $APPDIR/log
WORKDIR $APPDIR

RUN apt-get update && apt-get install -y \
    postgresql-client \
    && rm -rf /var/lib/apt/lists/*
