require 'sinatra'
require 'sinatra/reloader' if development?
require 'haml'
require 'pry'

set :haml, format:  :html5

get '/' do
  if session[:name]
    haml(:profile)
  else
    haml(:create_profile)
    haml(:index)
  end
end

get '/create_profile' do
  haml(:create_profile)
end

post '/create_profile' do
  session[:name] = params[:name]
  session[:year] = params[:year]
  session[:age] = params[:age]
  session[:explist] = params[:explist]
  session[:email] = params[:email]
  session[:address] = params[:address]
  redirect to('/profile_created')
end

get '/profile_created' do
  haml(:profile_created)
end

get '/profile' do
  @name = session[:name]
  @year = session[:year]
  @age = session[:age]
  @explist = session[:explist]
  @email = session[:email]
  @address = session[:address]
  haml(:profile)
end
