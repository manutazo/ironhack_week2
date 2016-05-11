 require 'sinatra'
require "sinatra/reloader" if development?
require 'haml'


set :haml, :format => :html5

get '/hours/ago/:hours' do
	@time_ago = Time.now - params[:hours].to_i * 3600
	haml(:hours)
end