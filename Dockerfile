FROM ruby:3.2.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /docker-lab
COPY Gemfile /docker-lab/Gemfile
COPY Gemfile.lock /docker-lab/Gemfile.lock
RUN bundle install

RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*
RUN pip3 install --upgrade pip
RUN pip3 install jupyter

RUN bundle exec iruby register --force
EXPOSE 8888