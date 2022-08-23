FROM ruby:latest

RUN apt-get update && apt-get install -y nodejs imagemagick
RUN gem install rails 