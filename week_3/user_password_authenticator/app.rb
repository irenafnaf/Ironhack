# app.rb
require_relative("lib/authenticator.rb")
require_relative('lib/word_counter.rb')

auth = Authenticator.new("Josh", "swordfish")

# Get login credentials
puts "username?"
username_input = gets.chomp

puts "password?"
password_input = gets.chomp



if auth.verify(username_input, password_input) # Call upon Authenticator to verify login credentials
 	puts "Welcome back, #{username_input}"
 	puts "Enter a sentence and I'll count the words"
 	sentence_input = gets.chomp
 	my_counter = WordCounter.new(sentence_input)
 	puts "The number of words in your sentence was #{my_counter.counter}" # Do word counter things

 else
	puts "Your credentials are't valid. Try Again!"
 	# Do something to tell the User their credentials aren't valid
end

