class UsersController < ApplicationController
	before_action :authenticate_user!, only: [:show] # given by devise, before you run the show action run authenticate_user method 
												   # which basically makes sure you are log in before the show page
	
	def show
		# @user = User.find_by(id: params[:id])
		@user = current_user

	end
end
