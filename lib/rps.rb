require 'sinatra/base'
require 'capybara/rspec'
require_relative 'game'
require_relative 'goodie'
require_relative 'baddie'



class RockPaperScissors < Sinatra::Base

set :views, Proc.new { File.join(root, "..", "views") }
set :public_folder, Proc.new { File.join(root, "..", "public") }
enable :sessions

goodie = Goodie.new(@name)
baddie = Baddie.new
game = Game.new(goodie, baddie)

  get '/' do
    
    erb :index
  end

  get '/new_game' do
  	erb :new_game
  end

  post '/game' do
  	@name = params[:name]
    session[:name] = @name
  	erb :game
  end


  get '/game' do
    @name = session[:name]
  	erb :game
  end 

  post '/game/result' do
    @name = session[:name]
    @g_choice = params[:goodie_choice].to_sym
    @b_choice = baddie.choice
    @result = game.winner(@g_choice, @b_choice)
    erb :result

  end

   get '/game/result' do
    @name = session[:name]
    erb :result
  end
  

  # start the server if ruby file executed directly
  run! if app_file == $0
end
