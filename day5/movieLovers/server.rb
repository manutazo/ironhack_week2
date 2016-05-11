# server.rb
require 'sinatra'
require 'sinatra/reloader' if development?
require 'haml'
require 'pry'

require_relative './lib/movies.rb'

set :haml, format:  :html5
enable(:movie)

@@movies = Movies.new

get '/' do
  haml(:find_movie)
end

post '/' do
  movie = params[:name]
  @@movies.search(movie)
end

get '/movies' do
  haml(:movies)
end
