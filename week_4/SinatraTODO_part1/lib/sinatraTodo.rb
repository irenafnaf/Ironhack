class Task
    attr_reader :content, :id, :created_at, :updated_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed_status = false
        @created_at = Time.now
        @updated_at = nil
    end

    def complete?
    	@completed_status 
    end

    def complete!
    	@completed_status = true
    end

    def make_incomplete!
    	@completed_status = false
    end

    def update_content!(content)
    	@content = content
    	@update_at = Time.now
    end

end