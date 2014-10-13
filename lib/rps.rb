require 'sinatra/base'
require 'capybara/rspec'


class RockPaperScissors < Sinatra::Base

set :views, Proc.new { File.join(root, "../" "views") }
set :public_folder, Proc.new { File.join(root, "../" "public") }


  get '/' do
    'Hello RockPaperScissors!'
    erb :index
  end

  get '/new_game' do
  	erb :new_game
  end

  post '/game' do
  	@name = params[:name]

  	erb :game
  end

  get '/game' do
  	erb :game
  end
  

  # start the server if ruby file executed directly
  run! if app_file == $0
end
