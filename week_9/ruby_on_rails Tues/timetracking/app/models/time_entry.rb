class TimeEntry < ActiveRecord::Base
	belongs_to :project

	validates :project_id, presence: true
	validates :hours, :minute, presence: true, numericality: true
	validates :date, presence: true


end
