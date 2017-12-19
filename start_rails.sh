#!/usr/bin/env bash

trap 'exit' ERR

if rake db:version | grep ": 0$"; then
  rake db:setup
else
  rake db:migrate
fi
rake assets:precompile

rails server -p 80
