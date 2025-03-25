FROM ruby:3.1.0
ENV TZ="Asia/Kolkata"

RUN apt install imagemagick
# Install node 18-LTS and yarn
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get update -qq && apt-get install -qq --no-install-recommends \
  nodejs \
  libxrender1 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
RUN npm install -g yarn@1

WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app

EXPOSE 7918

#RUN SECRET_KEY_BASE=1 RAILS_ENV=production bundle exec rake assets:precompile
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]