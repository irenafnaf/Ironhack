class Lexiconomitron

	def eat_t(string)
		string.gsub(/[t,T]/, "" )
	end

	def shazam(array_of_words)
		reverse = array_of_words.map do | word |
			word.reverse
		end

		[eat_t(reverse[0]), eat_t(reverse.last)]
	end
end