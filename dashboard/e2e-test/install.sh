#!/bin/bash +x
# $1: test branch

rm -rf services-quality-dashboard
git clone http://github.com/mozilla-services/services-quality-dashboard
cd services-quality-dashboard
git checkout $1
# mkdir -p services-quality-dashboard/tmp/pids/
bundle install
dashing start -d
