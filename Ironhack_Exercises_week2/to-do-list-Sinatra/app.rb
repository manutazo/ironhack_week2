require 'sinatra'
require 'sinatra/reloader' if development?
require_relative('./lib/todo.rb')
require_relative('./lib/todolist.rb')
require 'haml'
# todo_list = TodoList.new("Josh")
# todo_list.load_tasks

get "/" do
	"Hello world"
end

get '/create_task' do
	haml(:newTask)
end
 