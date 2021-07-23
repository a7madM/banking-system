FROM ruby:2.7.2

RUN apt update --fix-missing

RUN apt install -y build-essential libpq-dev libjpeg-dev libpng-dev imagemagick nano yarn git-core curl openssl libssl-dev

RUN rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app
ENV APP_PATH /app/
WORKDIR $APP_PATH
ADD . $APP_PATH

RUN gem install bundler -v 2.2.17
RUN bundle update rails
RUN bundle install -j3

RUN chmod +x /app/scripts/entrypoint.sh
