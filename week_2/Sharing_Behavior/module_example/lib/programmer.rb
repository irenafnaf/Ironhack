require_relative('beerable')



class Programmer
	include Beerable # Include Beerable module # Module usually ends en -able
	def initialize (name, favorite_language)
		@name = name
		@favorite_language = favorite_language
	end

	def drink_favorite_drink
		drink_beer # Called module method
	end
end
