require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    erb(:form)
  end

  post '/index.erb' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:index)
  end

run! if app_file == $0
end
