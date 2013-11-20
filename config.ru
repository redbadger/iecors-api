require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'])
require './iecors-api'
run IecorsApi
