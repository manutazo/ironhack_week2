require 'sinatra'
require 'sinatra/reloader' if development?

enable(:sessions)

get '/' do
	haml(:index)
end

get '/hours/ago/:hours_ago' do
	@hours = params[:hours_ago]
	haml(:hours_ago)
end


get '/puertas/profile/create' do
	if session[:name]
		haml(:index)
	else
		haml(:club_profile_create)
	end
end

get '/puertas/:name/:year' do
	if session[:name] && session[:year]
		@name = session[:name]
		@year = params[:year]
	else
		@name = params[:name]
		@year = params[:year]
		haml(:club_validator)
	end
end

get '/puertas/profile' do
	haml(:index)
end



