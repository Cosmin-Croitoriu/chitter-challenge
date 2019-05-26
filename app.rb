require 'sinatra/base'
require 'pg'
require './lib/account'
class  Chitter < Sinatra::Base
  use Rack::Session::Cookie

  get '/' do
    erb :index
  end

  post '/name' do
    Account.create_account(first_name: params[:first_name], last_name: params[:last_name], user_name: params[:user_name], email: params[:email], password: params[:password])
    redirect '/name'
  end

  get '/name' do
   erb :log_in
  end


end