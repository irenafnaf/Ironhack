class PostsController < ApplicationController

	def index
		@post = Post.all

	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(
			title: params[:post][:title],
			gif_url: params[:post][:gif_url])
		@post.save
		redirect_to '/posts'
	end

	def show
	@post = Post.find(params[:id])
	end

	def upvote

		@post = Post.find_by(id: params[:id])
		@post.nov = Post.increment_counter(:nov, params[:id])



		redirect_to post_path(@post.id)
	end


end
