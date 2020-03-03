require 'sinatra'

class Battle < Sinatra::Base

  get '/' do
    'Hello Battle!'
    'Testing infrastructure working!'
  end


  run! if app_file == $0
  
end