class LinksController < ApplicationController
	def show
		#input: params[:id]
		@link = Link.find(params[:id])
	end


	def new
		@link = Link.new
	end 

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

	def create
	# # input params[:link][:url]
	link = Link.create(
		url: params[:link][:url],
		short_url: Link.generate_shortlink(3)
	)

	redirect_to "/links/#{link.id}"
	end

end
