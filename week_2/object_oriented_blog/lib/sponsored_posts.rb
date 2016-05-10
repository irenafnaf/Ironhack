class SponsoredPost < Post
	def initialize(title, date, text)
		@title = title
		@date = Time.now
		@text = text
	end

	def display_post
		puts "***** #{@title}*****"
		puts @date
		puts @text
	end
end