class FizzBuzz

	def divisible_by_3(number)
		number % 3 == 0
	end

	def divisible_by_5(number)
		number % 5 == 0
	end

	def divisible_by_15(number)
		number % 15 == 0	
	end

	def fizz_buzz_printer(number)
		array = []
		
		(1..number).each do | num |
			if divisible_by_15(num)
				array.push("FizzBuzz")
			elsif divisible_by_5(num)
				array.push("Buzz")
			elsif divisible_by_3(num)
				array.push("Fizz")
			else
				array.push(num)
			end
		end

		array
	end
end

