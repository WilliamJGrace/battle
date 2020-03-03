require 'sinatra/base'

class Battle  < Sinatra::Base
  get '/' do
    # "Testing infrastructure working!"
    erb(:index)
  end

  post '/named-players' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb :play
  end


   run! if app_file == $0
end
