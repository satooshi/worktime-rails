FROM ruby:2.5.3-alpine3.8

ENV APP_ROOT=/app
ENV BUNDLE_JOBS=4
ENV BUNDLE_PATH=/bundle

RUN mkdir $APP_ROOT \
  && mkdir -p $BUNDLE_PATH \
  && mkdir -p $APP_ROOT/tmp/cache \
  && mkdir -p $APP_ROOT/tmp/pids \
  && mkdir -p $APP_ROOT/tmp/sockets
WORKDIR $APP_ROOT

COPY Gemfile $APP_ROOT
COPY Gemfile.lock $APP_ROOT

RUN apk upgrade --no-cache && \
    apk add --update --no-cache \
      postgresql-client \
      tzdata && \
    apk add --update --no-cache --virtual=build-dependencies \
      build-base \
      curl-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      postgresql-dev \
      ruby-dev \
      yaml-dev \
      zlib-dev && \
    echo 'gem: --no-document' >> ~/.gemrc && \
    cp ~/.gemrc /etc/gemrc && \
    chmod uog+r /etc/gemrc && \
    bundle config --global build.nokogiri --use-system-libraries && \
    gem install bundler && \
    bundle && \
    rm -rf ~/.gem && \
    apk del build-dependencies

EXPOSE 3000

COPY . /$APP_ROOT
CMD /$APP_ROOT/start.sh
