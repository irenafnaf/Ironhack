class WordStuff
	def initialize(sentence)
		@sentence = sentence
	end


	def counter_words
		words = @sentence.split
		words.length
	end

	def counter_letters
		@sentence.length
	end

	def reverse_sentence 
		@sentence.reverse
	end

	def uppercase
		@sentence.upcase
	end

	def lowercase
		@sentence.downcase
	end

end