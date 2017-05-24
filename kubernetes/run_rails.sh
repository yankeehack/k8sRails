#!/usr/bin/env bash
rake db:reset
rake db:setup
rake db:migrate
rails server