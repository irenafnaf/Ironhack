class StringCalculator
	
	def add_numbers(string)
		# numbers_array = string.split(",")
		
		# if string.empty?
		# 	 0
		# else 
		# 	numbers_array.reduce(0) do | sum, nmb |
		# 		sum + nmb.to_i
		# 	end

		string.split(',').reduce(0) do | sum, nmb |
			sum + nmb.to_i
		end
	end
end


