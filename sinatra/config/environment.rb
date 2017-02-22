require 'bundler/setup'
Bundler.require
require "sinatra/activerecord"

# 1. load up all of the relevant libraries
# 2. Require my application

set :database, {adapter: "sqlite3", database: "spiders.sqlite3"}


require_all('app/')
