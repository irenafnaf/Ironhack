require "sinatra"
require "sinatra/reloader" if development?
require "pry"
require("imdb")
require_relative "lib/moviesearch.rb"

enable :sessions

get "/" do	
	@message = session[:tryagain]
	p @message
	erb :home
end

get "/movie_picker" do
	@input = params[:movie_term]
	@movie= MovieSearcher.new(@input)
	@movieSearch=@movie.search_movie
	
	if @movieSearch.length<=2
		tryagain =" Not enough movies choose another keyword "
		session[:tryagain] = tryagain
		redirect "/"
	else
		@correctmovie = @movieSearch.sample
		@correctyear = @correctmovie.year
	end
	erb :movie_picker
end

