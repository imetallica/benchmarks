require 'grape'

class App < Grape::API
  format :json

  get do
    { name: "Thiago Henrique", role: "Nerd of IT" }
  end
end