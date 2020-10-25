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
    @sessions = sessions  
    
    erb :checkout
  end 
  
end