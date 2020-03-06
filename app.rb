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
    @game = $game
    @game.attack
    erb :attack
    # if @game.not_turn.hit_points == 0
    #   redirect '/get'
    # end
  end

  # get '/end' do
  #   @game = $game
  #   erb :end
  # end

  run! if app_file == $0
  
end