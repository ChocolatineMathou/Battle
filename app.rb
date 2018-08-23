require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player01])
    $player_2 = Player.new(params[:player02])
    redirect '/play'
  end

  get '/play' do
    @player01 = $player_1.name
    @player02 = $player_2.name
    erb :play
  end

  get '/attack' do
    @player01 = $player_1
    @player02 = $player_2
    Game.new.attack(@player02)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
