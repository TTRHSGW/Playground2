FROM ruby:2.6.5-alpine
RUN apk add --update --no-cache \
  build-base \
  gmp-dev \
  libxslt-dev \
  libxml2-dev \
  postgresql-client \
  postgresql-dev \
  tzdata \
  yarn \
  bash

WORKDIR /myapp
COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install

COPY . /myapp
