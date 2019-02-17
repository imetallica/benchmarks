require 'json'
require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    content_type :json

    { name: "Thiago Henrique", role: "Nerd of IT" }.to_json
  end
end