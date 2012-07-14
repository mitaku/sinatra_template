#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'sinatra/base'
require 'sinatra/reloader'
require 'haml'
require 'padrino/sprockets'

class App < Sinatra::Base
  register Sinatra::Reloader
  register Padrino::Sprockets
  sprockets

  set :public_folder, "public"
  set :views, "app/views"

  get "/" do
    haml :index
  end
end
