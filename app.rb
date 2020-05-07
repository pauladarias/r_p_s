require 'sinatra/base'
require './lib/robot'
require './lib/game_rps'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do 
    erb :index
  end 

  post '/name' do 
    session[:name] = params[:name]
    redirect '/game'

  end 

  get '/game' do 
    @player_name = session[:name]
    @player_button = session[:button]
    @robot = session[:robot]
    @game = session[:game]
    erb :game
  end 

  post '/game' do 
    session[:button] = params[:button]
    session[:robot]= Robot.new
    session[:game]= Game.new
    redirect '/game'  
  end 



  

  # start t he server if ruby file executed directly
  run! if app_file == $0
end   