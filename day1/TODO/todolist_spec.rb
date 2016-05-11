require_relative "todolist.rb"

RSpec.describe "To Do List" do

it "todo false" do
  task = Task.new("Buy the milk")
  expect(task.completed).to eq(false)
end

it "todo verdadero" do 
task = Task.new("buy the milk")
expect(task.completed!).to eq(true)
end
   it "todo false" do
  	task = Task.new("Wash the car")
    expect(task.completed).to eq(false)
	end
	  
    it "todo false" do
  	task = Task.new("Wash the car")
    expect(task.completed!).to eq(true)
  end
    
    it "test true" do
    task = Task.new("buy the milk")
    expect(task.completed?).to eq(false)
	end
	 
   it "test true" do
    task = Task.new("wash the car")
    task.completed!
    expect(task.completed?).to eq(true)
    end
    
    it "make compled test" do
    task = Task.new("buy the car")
    task.make_incomplete!
    expect(task.completed?).to eq(false)
   end

    it "update content" do
    task = Task.new("walk the car")
    task.update_content("walk the dog")
    expect(task.content).to eq("walk the dog") 
   end
   it "add task to @tasks" do 
    todolist = Todolist.new
    todolist = Todolist.new("walk the car")
    expect(@task).to eq("Walk the car")
  end
end