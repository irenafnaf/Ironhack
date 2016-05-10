require_relative('lib/post')
require_relative('lib/blog')
require_relative('lib/sponsored_posts')




post1 = Post.new("THIS IS MY FIRST POST", Time.now, "Some cool content")
# Print one post
#post.display_post

post2 = Post.new("NEW POST", Time.now, "This is very hard!")
post3 = SponsoredPost.new("SPONSORED POST", Time.now, "This post is sponsored by whatever.")
post4 = Post.new("POST NUMBER 4", Time.now, "UUGgghhhhhhhhh")
post5 = Post.new("POST NUMBER 5", Time.now, "I want to sleeeeeep!")
post6 = Post.new("POST NUMBER 6", Time.now, "I want ice cream.")
post7 = Post.new("POST NUMBER 7", Time.now, "I want to go!")

blog = Blog.new(3)
blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)
blog.add_post(post4)
blog.add_post(post5)
blog.add_post(post6)
blog.add_post(post7)
blog.publish
sleep(4)
blog.go_to_next_page