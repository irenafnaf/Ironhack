class CounterPicker
	def initialize(answer, word_counter)
		@answer = answer
		@word_counter = word_counter
	end

	def perform_operation
 		if @answer == "count words"
		 	puts "The number of words in your sentence was #{my_counter.counter_words}" 
		 elsif @answer == "count letters"
			puts "The number of letters in your sentence was #{my_counter.counter_letters}"
 		 elsif @answer == "reverse sentence"
 			puts "Your sentence in reverse looks like this: #{my_counter.reverse_sentence}"
 		 elsif @answer == "uppercase"
 		 	puts "And in uppercase looks like this: #{my_counter.uppercase}"
 		 elsif @answer == "lowercase"
			puts "And in lowercase like this: #{my_counter.lowercase}"
		 else
			puts "Your option is invalid"
		end
	end
end