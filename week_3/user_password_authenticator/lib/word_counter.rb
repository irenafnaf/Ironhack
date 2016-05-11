class WordCounter
	def initialize(sentence)
		@sentence = sentence
	end


	def counter
		words = @sentence.split
		words.length
	end
end