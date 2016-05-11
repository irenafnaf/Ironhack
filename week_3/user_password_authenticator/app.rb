# app.rb
require_relative("lib/authenticator.rb")
require_relative('lib/word_stuff.rb')

auth = Authenticator.new("Josh", "swordfish")

# Get login credentials
puts "username?"
username_input = gets.chomp

puts "password?"
password_input = gets.chomp



if auth.verify(username_input, password_input) # Call upon Authenticator to verify login credentials
 	puts "Welcome back, #{username_input}"
 	puts "Enter a sentence"
 	sentence_input = gets.chomp
# Do word counter things
 	my_counter = WordStuff.new(sentence_input)
 	puts "Do you want to: \n count words / \n count letters / \n reverse sentence / \n make them uppercase / \n make them lowercase"
 	answer = gets.chomp
 		if answer == "count words"
		 	puts "The number of words in your sentence was #{my_counter.counter_words}" 
		 elsif answer == "count letters"
			puts "The number of letters in your sentence was #{my_counter.counter_letters}"
 		 elsif answer == "reverse sentence"
 			puts "Your sentence in reverse looks like this: #{my_counter.reverse_sentence}"
 		 elsif answer == "uppercase"
 		 	puts "And in uppercase looks like this: #{my_counter.uppercase}"
 		 elsif answer == "lowercase"
			puts "And in lowercase like this: #{my_counter.lowercase}"
		end

 else
	puts "Your credentials are't valid. Try Again!"
 	# Do something to tell the User their credentials aren't valid
end

