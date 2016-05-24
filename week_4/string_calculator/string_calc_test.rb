require_relative('lib/string_calculator')

calc = StringCalculator.new

if calc.add_numbers("") == 0
	puts "Returned 0 for an empty string"
else
	puts "Something went wrong with empty string"
end

if calc.add_numbers("1") == 1
	puts "Returned a number when given a single string"
else
	puts "Didn't return a number when given a single string"
end

if calc.add_numbers(
	puts "Returned a number when given two numbers"
else
	puts "Something went wrong when adding the numbers"
end