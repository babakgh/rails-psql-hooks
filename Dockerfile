FROM ruby:onbuild

RUN apt-get update -qq && apt-get install -y build-essential 

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install
RUN bundle exec gem install thin

ADD . $APP_HOME
