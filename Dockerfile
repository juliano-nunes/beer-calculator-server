FROM ruby:2.5.5

RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs

ENV APP_HOME /beer-calculator
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN gem install bundler
RUN bundle install
ADD . $APP_HOME

EXPOSE 3000
