require_relative ("../lib/TodoList")
require_relative ("../lib/sinatraTodo")
require_relative "./spec_helper"

describe "#TodoList" do 
	before :each do
		@todo_list = TodoList.new
		@task = Task.new("Buy the Milk")
		@task_2 = Task.new("Walk the dog")
	end

	describe "#add_task" do
		it "should add a task to the list" do
			@todo_list.add_task(@task)
			expect(@todo_list.tasks.length).to eq(1)
		end
	end

	describe "#delete_task" do
		it "should delete task by Id" do
		@todo_list.add_task(@task)
		@todo_list.delete_task(@task.id)
		expect(@todo_list.tasks.length).to eq(0)
		end
	end

	describe "#find_task_by_id" do
		it "should find task by id" do
		@todo_list.add_task(@task)
		@todo_list.add_task(@task_2)
		@todo_list.find_task_by_id(1)
		expect(@todo_list.tasks.length).to eq()


end