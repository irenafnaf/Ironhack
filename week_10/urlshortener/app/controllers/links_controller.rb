class LinksController < ApplicationController
	def index 
		params[:shortlink]
		# input is short url in params[:shortlink]
		# 1. Find a link with a specific shorturl
		link = Link.find_by(short_url: params[:shortlink])
		
		# outcome: redirect to original url
		if link
			redirect_to link.url
		end
	end


end
