equire 'sinatra'
require "sinatra/reloader" if development?
require 'haml'

set :haml, :format => :html5
	
	get '/name/:age' do
	@time_age = Time.now - params[:age].to_i * 13996800000
	haml(:age)
end