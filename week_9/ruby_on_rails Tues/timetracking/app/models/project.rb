class Project < ActiveRecord::Base
	has_many :time_entries
	# has_many :entry, class_name: "TimeEntry" if i wanted to call it something else than time_entries

	validates :name, presence: true, uniqueness: true, length: {maximum: 30}, format: {with: /[a-zA-Z0-9]/ }


	def self.clean_old
		where("created_at < ?", 1.week.ago).destroy_all
	end

	def self.last_created_projects(limit)
		limit(limit).order(created_at: :desc)
	end

	def total_hours_in_month(month, year)
		date = Time.new(year, month)
		entries_in_month = time_entries.where(date: date..date.end_of_month)

		hours = entries_in_month.sum { |e| e.hours }
		minutes = entries_in_month.sum { |e| e.minutes }
		hours + (minutes / 60)
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
