FROM ruby:2.5.1

ENV DEBIAN_FRONTEND noninteractive
RUN apt -y -qq update && \
    apt -y -qq install build-essential openssl

ADD . /opt/lita

WORKDIR /opt/lita
RUN bundle install --path vendor/bundle

ENTRYPOINT bundle exec lita
