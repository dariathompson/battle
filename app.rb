require 'sinatra'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end
  
  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    #count = 1
    @game = $game
    #if count.even?
      # count += 1
      @game.attack#@game.player_2)
    
    # else
    #   count += 1
    #   @game.attack(@game.player_1) 
      
    # end
    erb :attack
  end

  run! if app_file == $0
  
end