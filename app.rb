require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "secrettt"
  end
  
  get '/' do 
    erb :index
  end 
  
  post '/checkout' do 
    @sessions = session
    @item = params[:items]
    @session[:items] = item
    
    erb :checkout
  end 
  
end