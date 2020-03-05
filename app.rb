require 'sinatra/base'
# require_relative 'HealthPoints'
require './lib/player'
require './lib/game'

class Battle  < Sinatra::Base
  enable :sessions
  get '/' do
    # "Testing infrastructure working!"
    erb(:index)
  end

  post '/named-players' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end
  get '/attack' do
    @game = $game

    @game.attack(@game.player2)
    # @game.current_player = @game.players[@game.current_turn]
    erb :attack
    # redirect '/play'
  end

  get '/play' do
    # @player1 = $player1
    # @player2 = $player2
    @game = $game

    # @player1hp = HealthPoints.new
    # @player2hp = HealthPoints.new
    erb :play
  end


   run! if app_file == $0
end
