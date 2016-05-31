require 'yaml/store'
require_relative "store_list.rb"

class TodoList
   attr_reader :tasks, :user

   def initialize(user)
       @todo_store = YAML::Store.new("./public/tasks.yml")
       @user = user
       @tasks = []
   end

   def add_task(task)
       @tasks.push(task)
   end

   def delete_task(id)
       @tasks.delete_if do | task |
            task.id == id
       end
   end

   def find_task_by_id(id)
       task = @tasks.find do | task |
           task.id == id
       end
   end

   def sort_by_created(direction)
       sorted_tasks = @tasks
           
           if direction == "ASC"
               sorted_tasks.sort! { | task1, task2 | task1.id <=> task2.id }
            elsif direction == "DESC"
               sorted_tasks.sort! { | task1, task2 | task2.id <=> task1.id }
           end
       sorted_tasks
   end

   def load_tasks
    @tasks
   end
end