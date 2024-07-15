#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install

gem install net-pop -v '~> 0.1.2'
gem install net-protocol -v '~> 0.1.3'



bundle exec rails assets:precompile
bundle exec rails assets:clean

