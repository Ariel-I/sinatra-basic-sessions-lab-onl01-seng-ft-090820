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
    
    erb :checkout
  end 
  
end