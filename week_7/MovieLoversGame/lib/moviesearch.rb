class MovieSearcher
	attr_accessor :movies_with_poster
	def initialize (keyword)
		 term= Imdb::Search.new(keyword)
		 @movies=term.movies[0..19]
		 @movies_with_poster = []
	end

	def search_movie()
		@movies.each do | movies |
			if !movies.poster.nil?
				@movies_with_poster.push(movies)
			end
		end
		@movies_with_poster[0..8]
	end

# def random_items(array)
#   array.sample(1 + rand(array.count))
# end

end