# Attributes
	# Homes

# Actions
	# Prints all homes
	# Sort homes by price or capacity
	# Find price by average
	# Filter by city
	# Find based on price

class HomeSorter
	def initialize(homes)
		@homes = homes 
	end

	def home_printer
		p @homes
		@homes.each do | home |
			puts "#{home.name} in #{home.city}"
			puts "Price: #{home.price}"
			puts "Capacity: #{home.capacity}"
			puts ""
		end
	end
end

