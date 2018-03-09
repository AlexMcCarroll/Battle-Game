require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect to('/play')
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:play)
  end

  post '/attack_1' do
    @player1 = $player1.name
    @player2 = $player2.name
    redirect to('/confirmation1')
  end

  post '/attack_2' do
    @player1 = $player1.name
    @player2 = $player2.name
    redirect to('/confirmation2')
  end

  get '/confirmation1' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:confirmation1)
  end

  get '/confirmation2' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb(:confirmation2)
  end

  run! if app_file == $0
end
