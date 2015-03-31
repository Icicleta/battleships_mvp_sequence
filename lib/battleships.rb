require 'sinatra/base'
require_relative 'player'
require_relative 'destroyer'

class Battleships < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/fire' do
    @player = Player.new
    @player.place(Destroyer, 'A1', :east)
    puts params['coords']
    erb :fire
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
