class UsersController < ApplicationController

	def home
	end

	def new
		@user = User.new
	end
	
	def show
		@user = User.find_by(id: params[:id])
	 end

	
end
