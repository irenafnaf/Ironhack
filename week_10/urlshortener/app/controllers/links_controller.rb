class LinksController < ApplicationController
	def index 
		params[:shortlink]
		# input is short url params[:shortlink]
		@link = Link.find_by(short_url: params[:shortlink])
		redirect_to @link.url
	end


end
