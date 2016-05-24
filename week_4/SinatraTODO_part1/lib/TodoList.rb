class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end

    def add_task(new_task)
    	@tasks.push(new_task)
    end

    def delete_task(id)
    	@tasks.delete_if do | task |
    		task.id == id
    	end
    end

    def find_task_by_id(id)
    	
end