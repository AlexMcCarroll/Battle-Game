require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $p1 = Player.new(params[:player1])
    $p2 = Player.new(params[:player2])
    redirect to('/play')
  end

  get '/play' do
    @player1 = $p1
    @player2 = $p2
    erb(:play)
  end

  post '/attack_1' do
    @player1 = $p1
    @player2 = $p2
    @player1.attack(@player2)
    redirect to('/play')
  end

  post '/attack_2' do
    @player1 = $p1
    @player2 = $p2
    @player2.attack(@player1)
    redirect to('/play')
  end

  run! if app_file == $0
end
