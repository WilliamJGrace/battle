require 'sinatra/base'
require_relative 'HealthPoints'

class Battle  < Sinatra::Base
  enable :sessions
  get '/' do
    # "Testing infrastructure working!"
    erb(:index)
  end

  post '/named-players' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end
  post '/attack' do
    @player2hp.deduct(10)
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    # @player1hp = HealthPoints.new
    # @player2hp = HealthPoints.new
    @player2hp = 100
    erb :play
  end


   run! if app_file == $0
end
