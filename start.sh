#!/bin/sh

# rsync
test "$RAILS_ENV" == "DEVELOPMENT" && rsync -a /bundle/ /app/vendor/bundle/
bin/rails s -b 0.0.0.0
