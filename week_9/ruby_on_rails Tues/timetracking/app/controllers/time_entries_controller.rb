class TimeEntriesController < ApplicationController
	before_action :set_project, only: [:update, :edit, :create, :index, :new, :destroy]

	def destroy
		@time_entry = @project.time_entries.find(params[:id])
		
		@time_entry.destroy
			redirect_to project_time_entries_path(@project)
		
	end



	def update
			# input: project_id, time_entry id
		# @project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.find(params[:id])
			if @time_entry.update(time_entry_params)
				redirect_to project_time_entries_path(@project)
			else
				render 'edit'
			end
	end


	def edit
		# @project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.find(params[:id])
	end

	def create
			#input: params[:project_id] and params[:time_entry]
			#find resources needed
		# @project = Project.find(params[:project_id])
			# create strong parameters whitelist
		# time_entry_params = params.require(:time_entry).permit(:hours, :minute, :date) - used in the private
			# time_entry_params = {hours,: 1, minutes: 3, date: somedate}
		@time_entry = @project.time_entries.new(time_entry_params)
		if @time_entry.save
			# redirect_to action: 'index', controller: 'time_entries', project_id: @project.id 
			redirect_to project_time_entries_path(@project)
		else
			render 'new'
		end
	end

	def index
		# @project = Project.find(params[:project_id])
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
		# @project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.new
	end


private

	def set_project
		@project = Project.find(params[:project_id])
	end
	
	def time_entry_params
		params.require(:time_entry).permit(:hours, :minute, :date, :comment)
	end





end
