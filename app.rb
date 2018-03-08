require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect to('/play')
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  post '/attack_1' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    redirect to('/confirmation1')
  end

  post '/attack_2' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    redirect to('/confirmation2')
  end

  get '/confirmation1' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:confirmation1)
  end

  get '/confirmation2' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:confirmation2)
  end

  run! if app_file == $0
end
