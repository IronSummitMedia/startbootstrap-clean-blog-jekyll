FROM ruby:3.3.4-bookworm

# Install dependencies
RUN apt-get update && apt-get install -y \
  build-essential \
  zlib1g-dev \
  && rm -rf /var/lib/apt/lists/*

# Install Jekyll 3.10.0 and Bundler
RUN gem install jekyll -v '3.10.0'
RUN gem install bundler -v '2.3.25'

# Set the working directory
WORKDIR /srv/jekyll
