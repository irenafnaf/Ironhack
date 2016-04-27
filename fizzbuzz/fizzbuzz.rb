count = 0
100.times do |i|
	count +=1
	puts count.to_s
	if i % 5 == 0 and i % 3 ==0
		puts "FizzBuzz"
	elsif i % 5 == 0
		puts "Buzz"
	elsif i % 3 == 0
		puts "Fizz"
	else
		puts i
	end
	
end
	
	