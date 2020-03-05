require 'sinatra/base'
# require_relative 'HealthPoints'
require './lib/player'

class Battle  < Sinatra::Base
  enable :sessions
  get '/' do
    # "Testing infrastructure working!"
    erb(:index)
  end

  post '/named-players' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end
  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    @player1.attack(@player2)
    erb :attack
    # redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2

    # @player1hp = HealthPoints.new
    # @player2hp = HealthPoints.new
    erb :play
  end


   run! if app_file == $0
end
