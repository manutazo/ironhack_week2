# server.rb
require 'sinatra'
require 'sinatra/reloader' if development?
require 'haml'
require 'pry'
require_relative './lib/post.rb'
require_relative './lib/blog.rb'

set :haml, format:  :html5
enable(:sessions)

blog = Blog.new

get '/create_post' do
  haml(:create_post)
end

post '/public_post' do
  title = params[:title]
  date = params[:date]
  text = params[:text]
  post = Post.new(title, date, text)
  blog.add_post(post)
  redirect to('/')
end

get '/' do
  # acumulo en una variable mi blog y renderizo una vista donde hago un LOOP con todos mis posts.
  @blog = blog.blog
  haml(:index)
end
