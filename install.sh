touch Dockerfile

echo 'FROM ruby:2.4.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /pairing
WORKDIR /pairing
ADD Gemfile /pairing/Gemfile
ADD Gemfile.lock /pairing/Gemfile.lock
RUN bundle install
ADD . /pairing' > Dockerfile 

touch Gemfile

echo "source 'https://rubygems.org'
gem 'rails', '5.0.0.1'" > Gemfile


touch Gemfile.lock

touch docker-compose.yml

echo "version: '2'
services:
  db:
    image: postgres
  web:
    build: .
    command: bundle exec rails s -p 3000 -b '0.0.0.0'
    volumes:
      - .:/pairing
    ports:
      - "3000:3000"
    depends_on:
      - db" > docker-compose.yml

docker-compose run web rails new . --force --skip-turbolinks --database=postgresql --skip-bundle

docker-compose build

echo "default: &default
  adapter: postgresql
  encoding: unicode
  database: pairing_development
  username: postgres
  password:
  host: db
  # For details on connection pooling, see rails configuration guide
  # http://guides.rubyonrails.org/configuring.html#database-pooling
  pool: 5 
development:
  <<: *default
  database: pairing_development
  host: db 
test:
  <<: *default
  database: pairing_test
production:
  <<: *default
  database: pairing_production
  username: postgress
  password: " > ./config/database.yml


docker-compose run web rake db:create
docker-compose up
