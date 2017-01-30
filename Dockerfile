FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.1

RUN gem install bind9mgr --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bind9mgr"]
CMD ["--help"]
