# Base image:
FROM ruby:2.4.1

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Set an environment variable where the Rails app is installed to inside of Docker image:
ENV RAILS_ROOT /var/www/rails_docker_hello_world
RUN mkdir -p $RAILS_ROOT

# Set working directory, where the commands will be ran:
WORKDIR $RAILS_ROOT

# Copy the main application.
COPY . .

# Setup rails environment.
ENV RAILS_ENV production

# Secret key base should not be set like that. It just for testing.
ENV SECRET_KEY_BASE b73cf36f30aab3b755bb0006a29d02dae74ab0dbb6d53da968e56100a5d8f0a25b2152af98eaafac72e03b5903a5b7ad30d0792e167d0b438cad9972187e840a

# Install gems.
RUN gem install bundler
RUN bundle install --without development test

EXPOSE 3000

# The default command that gets ran will be to start the Puma server.
CMD bundle exec puma -C config/puma.rb
