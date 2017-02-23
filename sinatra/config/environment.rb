
# 1. load up all of the relevant libraries
  require 'bundler/setup'
  # gives us access to the Bundler class
  Bundler.require
# 2. Require my application
  require_all('app/')

  # sinatra
set :database, {adapter: "sqlite3", database: "spiders.sqlite3"}
