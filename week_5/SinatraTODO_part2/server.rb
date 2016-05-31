require "sinatra"
require "sinatra/reloader" if development?
require "pry"

require_relative "lib/task.rb"
require_relative "lib/TodoList.rb"



        todo_list = TodoList.new("Josh")

	    task1 = Task.new("Buy the milk")
        task2 = Task.new("Wash the car")
        task3 = Task.new("Make my todo list into a web app")


        todo_list.add_task(task1)
        todo_list.add_task(task2)
        todo_list.add_task(task3)

        tasks = todo_list.load_tasks


# get "/"  do
# 	erb :home
# end

get "/tasks" do # Displays all of the tasks
	@todo_list = todo_list.tasks
	erb :tasks_index
end

get "/new_task" do # Displays a form, whish posts to /create_task
	erb :new_task
end

post "/create_task" do# Create a new task(Task.new)
	@task = Task.new(params[:task])
	todo_list.add_task(@task) # Add it to the todo_list (with the todo_list.add_task method)
	# todo_list.save  # Save the todo_list (with the todo_list.save method)
	redirect to ("/tasks")
	erb :tasks_index
end

post "/complete_task" do
	@find_task = todo_list.find_task_by_id((params[:complete]).to_i) # This action should find a task out of your todo_list based on it's id.(todo_list.find_task_by_id)
	@find_task.complete! # Then, we should mark the task as complete(task.complete!)
	# todo_list.save # Save the todo list(todo_list.save)
	redirect to ("/tasks") # Redirect the user back to the task home page.

end

post "/delete_task" do
	todo_list.delete_task((params[:delete]).to_i) # Deletes one specific task from the todolist with the todo_list.delete_task method
	redirect to ("/tasks")
end
# oute: '/delete_task/'' (POST) 
# ERB: None
# What does it do?:

# Save the todo list(todo_list.save method)
# Redirects the user back to the task home page




