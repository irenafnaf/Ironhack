# Motorcycle
class Motorcycle
	attr_accessor :wheels

	def initialize
	@wheels = 2
	end
end

# Sedan
class Sedan
	attr_accessor :wheels

	def initialize
		@wheels = 4
	end
end

# Hoverboard
class Hoverboard
	attr_accessor :wheels

	def initialize
		@wheels = 0
	end
end

# Unicycle
class Unicycle
	attr_accessor :wheels

	def initialize
		@wheels = 1
	end 
end

# 18 Wheeler
class Truck
	attr_accessor :wheels

	def initialize
		@wheels = 18
	end
end

class WheelCounter
	
	def initialize(array_of_vehicles)
		@array_of_vehicles = array_of_vehicles
	end

	def count_wheels
		total = @array_of_vehicles.reduce(0) do | sum, wh |
			sum + wh.wheels
		end
		puts "The total number of wheels is: #{total}"
	end
end



ninja = Motorcycle.new #2
mazda = Sedan.new #4
hoverboard = Hoverboard.new #0
my_cycle = Unicycle.new #1
truck = Truck.new  #18

array_of_vehicles = [ninja, mazda, hoverboard, my_cycle, truck]

wheel_counter = WheelCounter.new(array_of_vehicles)
wheel_counter.count_wheels
#25