require 'sinatra'
require 'rack/cors'
require 'json'

class IecorsApi < Sinatra::Base
  use Rack::Cors do
    allow do
      origins '*'
      resource '/*', headers: :any, methods: :get
    end
  end
  response = { message: 'Hello' }.to_json
  get '/hello_world' do
    response
  end
  post '/hello_world' do
    response
  end
end
