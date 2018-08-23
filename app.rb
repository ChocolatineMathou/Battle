require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player01] = params[:player01]
    session[:player02] = params[:player02]
    redirect '/play'
  end

  get '/play' do
    @player01 = session[:player01]
    @player02 = session[:player02]
    erb :play
  end

  post '/attack' do
    "You attacked Player 2"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
