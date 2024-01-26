FROM ruby:3.2.2

RUN curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get update -qq && \
    apt-get install -y nodejs && \
    npm install --global yarn && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install
RUN yarn

COPY . /myapp

EXPOSE 3000
CMD ["./bin/rails", "server", "-b", "0.0.0.0"]
