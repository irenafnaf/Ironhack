class Project < ActiveRecord::Base
	has_many :time_entries
	# has_many :entry, class_name: "TimeEntry" if i wnated to call it something else than time_entries

	def self.clean_old
		where("created_at < ?", 1.week.ago).destroy_all
	end

	def self.last_created_projects(limit)
		limit(limit).order(created_at: :desc)
	end
end


# # EXAMPLE
# class Project
# 	attr_reader :name

# 	def initialize(name)
# 		@name = name
# 	end 
# end
# p = Project.new("Ironhack")
# p.name
