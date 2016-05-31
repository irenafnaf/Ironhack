require_relative ("../lib/task")
require_relative "./spec_helper"

describe "#Task" do 
	before :each do
		@task = Task.new("Buy the Milk")
	end
	
	describe "#complete?" do 		
		it "should return false if the task if is not completed" do
			expect(@task.complete?).to eq(false)
		end
	end

	describe "#complete!" do
		it "should return true when task is completed" do
			@task.complete!
			expect(@task.complete?).to eq(true)
		end
	end

	describe "#make_incomplete!" do
		it "should turns the completed status of the task to false" do
			@task.make_incomplete!
			expect(@task.complete?).to eq(false)
		end
	end

	describe "#update_content!" do
		it "should update content when method is called" do
			@task.update_content!("Walk the dog")
			expect(@task.content).to eq("Walk the dog")
		end 
	end
end