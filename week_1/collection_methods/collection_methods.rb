class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end


homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]


	# puts homes[0].name
	# puts homes[1].name
	# puts homes[2].name
	# puts homes[3].name
	# puts homes[4].name

# Loop thru array	
	# for number in 0..100
	#   puts number
	# end

	# for pos in 0..100
	# 	puts homes[pos].name
	# end

# Each
	# homes.each do | hm |
	# 	puts hm.name
	# end

# Each with {} instead of do and end
	# homes.each { |hm|
	# 	puts hm.name
	# }

# Parameters in blocks
	# hm = Home.new("Nizar's place", "San Juan", 2, 42)
	# puts hm.name

# Exercise: Each
	# homes.each do | hm |
	# 	puts "#{hm.name} in #{hm.city}"
	# 	puts "Price: $#{hm.price} a night"
	# end

# Map
	# cities = []
	# homes.each do | hm |
	# 	cities.push(hm.city)
	# end

	# puts cities

# Map original array into new array (new array: cities)
	# cities = homes.map do | hm |
	# 	hm.city
	# end

	# puts cities

# puts homes

	# prices = homes.map do | pr |
	# 	pr.price
	# end

	# puts prices

# Average Price of home with each

	# avg_price = 0 

	# homes.each do |hm|
	# 	avg_price = avg_price + hm.price
	# end

	# puts "The average price of homes is:"
	# puts avg_price/homes.length

# Average Capacity with each
	# total_capacities = 0.0

	# homes.each do |hm|
	# 	total_capacities = total_capacities + hm.capacity
	# end

	# puts "The average capacity is:"
	# puts total_capacities/homes.length

# Reduce Method
	# total_capacities = homes.reduce(0.0) do | sum, hm|
	# 	sum + hm.capacity
	# end

	# puts "The average capacity is:"
	# puts total_capacities/homes.length


# Average Price of home with reduce

	# avg_price = homes.reduce(0) do | sum, hm|
	# 	sum + hm.price
	# end

	# puts "The average price of homes is:"
	# puts avg_price/homes.length

# Each with index

	# homes.each_with_index do |hm, index|
	# 	puts "Home Number #{index + 1}: #{hm.name}"
	# end

# Select Method
	# # Homes in San juan
	# san_juan_homes = homes.select do |hm|
	#  # Keep hm only if its city is "San Juan"
	#  	hm.city == "San Juan"
	#  end

	# san_juan_homes.each do | hm |
	# 	puts "#{hm.name} is in San Juan"
	# end

	# # Homes with capacity 4 or more
	# high_capacity_homes = homes.select do |hm|
	#  # Keep only if its capacity is 4 or greater
	# 	hm.capacity >= 4
	# end	

	# high_capacity_homes.each do |home|
	# puts "the home in #{home.city} has space for #{home.capacity} people and costs #{home.price}"
	# end

# Find
	# home_41_dollars = homes.find do |hm|
	# 	# Is hm's price $41?
	# 	hm.price == 41
	# end

	# puts "The first home that costs $41 is:"
	# puts home_41_dollars.name

# Sort by capacity

	sorted = homes.sort do |home1, home2|
		#Compare the two homes by their capacity
		home1.capacity <=> home2.capacity
	end

	puts "Sorted by capacity:"

	sorted.each do |home|
		puts "#{home.name} - #{home.capacity}"
	end

	sorted = homes.sort do |home1, home2|
		# Compare the two homes by their name
		home1.name <=> home2.name
	end

	puts "Sorted by name:"

	sorted.each do |home|
		puts "#{home.name}"
	end

# Other Collections

	rng = 1..42

	rng.each do |number|
		puts "The next number in the range is: #{number}"
	end

	double = rng.map do |number|
		number * 2
	end
	puts double

	hellos = {
		:english => "Hello",
		:spanish => "Hola",
		:french => "Bonjour"
	}

	hellos.each do |language, word|
		puts "The word for Hello in #{language} is: #{word}."
	end
	














