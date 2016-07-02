class TimeEntriesController < ApplicationController
	
	def create
		#input: params[:project_id] and params[:time_entry]
		@project = Project.find(params[:project_id])
		time_entry_params = params.require(:time_entry).permit(:hours, :minute, :date)
		# time_entry_params = {houts,: 1, minutes: 3, date: somedate}
		@time_entry = @project.time_entries.new(time_entry_params)
		if @time_entry.save
			# redirect_to action: 'index', controller: 'time_entries', project_id: @project.id 
			redirect_to project_time_entries_path(@project)
		else
			render 'new'
		end
	end

	def index
		@project = Project.find(params[:project_id])
		@time_entries = @project.time_entries
	end

	# def create
	# 	#input: project's id and it'll be in the params hash
	# 	# 1. Find the project
	# 	@project = Project.find(params[:id])

	# 	# 2. Initialize a new time entry for the project
	# 	@time_entry = @project.time_entries.new

	# 	# 3. Save the time eentry

	# 	@time_entry.save

	# 	#...

	# 	#outcome: a time entry for the given project is created
	# end

	def new
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.new
	end
end
