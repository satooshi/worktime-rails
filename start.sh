#!/bin/sh
test "$RAILS_ENV" != "PRODUCTION" && bundle install --path vendor/bundle
bin/rails --trace db:create db:migrate
bin/rails --trace db:create db:migrate RAILS_ENV=test
bin/rails s -b 0.0.0.0
