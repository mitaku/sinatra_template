$LOAD_PATH << File.expand_path(".")
require 'rubygems'
require 'bundler'
Bundler.setup
Bundler.require

require 'app'

map '/' do
  run App
end
