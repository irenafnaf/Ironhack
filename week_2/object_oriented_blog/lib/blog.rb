# Attributes
	# Hold a collection of different posts (List of posts)

# Actions (Methods)
	# Publish(aka print) all of the posts

class Blog
	def initialize (posts_per_page)
		@list_of_posts = []
		@current_page = 1
		@posts_per_page = posts_per_page
	end

	def add_post(post)
		@list_of_posts.push(post)
	end

	def publish
		first = (@current_page - 1) * 3
		last = first + (@posts_per_page - 1)

		@list_of_posts[first..last].each do | one_post |
			one_post.display_post
		end
		
		last_page = (@list_of_posts.length / @posts_per_page).ceil
		(1..last_page).each do |num|
			print "#{num} "
		end 
		puts " "
		puts " >  next"
	end


	def go_to_next_page
		@current_page += 1
		publish
	end
end

