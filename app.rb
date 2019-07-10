require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_one_name = Player.new(params[:player_one_name])
    $player_two_name = Player.new(params[:player_two_name])
    redirect '/play'
  end

  get '/play' do
    @player_one_name = $player_one_name.name
    @player_two_name = $player_two_name.name
    erb :play
  end

  get '/attack' do
    erb :attack
  end

  run! if app_file == $0
end
