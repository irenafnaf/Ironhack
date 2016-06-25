class ProjectsController < ApplicationController
	def index
		@projects = Project.last_created_projects(10)
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(
			name: params[:project][:name],
			description: params[:project][:description]
			)
		@project.save
		redirect_to '/projects'
	end

	def show
		# begin
		# 	@project = Project.find(params[:id])
		# rescue ActiveRecord::RecordNotFound
		# 	# redirect_to '/projects'
		# 	render 'no_projects_found'
		# end
		
		@project = Project.find(params[:id])
		unless @project  #use unless if you dont have an else and if you dont have more than one condition
			render 'no_projects_found'
		end
	end

end
