# app.rb
require_relative("lib/authenticator.rb")
require_relative('lib/word_stuff.rb')
require_relative('lib/counter_picker.rb')

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
 	counter_picker = CounterPicker.new(answer, my_counter)
 	counter_picker.perform_operation



 else
	puts "Your credentials are't valid. Try Again!"
 	# Do something to tell the User their credentials aren't valid
end

