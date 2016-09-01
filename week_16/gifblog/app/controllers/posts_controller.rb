class PostsController < ApplicationController

	def index
		@post = Post.where("nov > 5")

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

		# @post = Post.new(post_params)
		# if @post.save
		#   redirect_to post_path(@post.id)
		# else
		#   render 'new'
		# end
	end

	def show
	@post = Post.find(params[:id])
	end

	def upvote

		@post = Post.find_by(id: params[:id])
		@post.nov = Post.increment_counter(:nov, params[:id])
		# @post.upvote

		redirect_to post_path(@post.id)
	end

	def downvote
		@post = Post.find_by(id: params[:id])
		@post.downvote
		redirect_to post_path(@post.id)
	end

	def low
		@posts = Post.low_rated_index
		render 'index'
	end

	def date
		@posts = Posts.sort_by_date
		render 'index'
	end

	def votes
		@posts = Post.sort_by_votes
		render 'index'
	end

	private

	def post_params
		params.require(:post).permit(:title, :gif)
	end



end
