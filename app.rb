require 'sinatra/base'
# require_relative 'HealthPoints'
require './lib/player'
require './lib/game'
require './lib/attack'

class Battle  < Sinatra::Base
  enable :sessions
  get '/' do
    # "Testing infrastructure working!"
    erb(:index)
  end

  post '/named-players' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.create(player1, player2)
    redirect '/play'
  end
  get '/attack' do
    @game = Game.instance
    @attack = Attack.new(@game.defending_player, @game.current_player)
    @attack.attack
    # if @game.defending_player.current_hp =< 0
    erb :attack
  end

  post '/switch_players' do
    @game = Game.instance
    @game.switch_players
    redirect '/play'

  end

  get '/play' do
    @game = Game.instance
    erb :play
  end


   run! if app_file == $0
end
