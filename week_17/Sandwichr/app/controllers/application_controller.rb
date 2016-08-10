class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception
	# For APIs, you may want to use :null_session instead

  protect_from_forgery with: :null_session
end


# Application controller means whatever is in here applies for every single controller.
# If it doesn't apply to a specific controller then put the protect_from_forgery in the specific controller