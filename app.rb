require 'sinatra/base'
class  Chitter < Sinatra::Base
  use Rack::Session::Cookie

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    session[:user_name] = params[:user_name]
    session[:email] = params[:email]
    session[:password] = params[:password]
    redirect '/name'
  end

  get '/name' do
   "works"
  end


end