# What does a car do? methods - what is does (superpowers)
	#Honks
	#Starts
	#Plays Radio

# What defines my car? What are it's attributes
	# Color
	# Make	
	# Year
	# Engine
	# Price

class Car
	
	attr_accessor :color #accessor method - to change specific attribute

	def initialize(my_color, my_sound)
		@color = my_color
		@sound = my_sound
	end

	# Instance Method
	def make_noise
		puts "My #{@color} car goes #{@sound}"	#string interpolation
	end

	def car_color
		puts @color
	end

	def play_radio
		puts "Waka Flaka is going hard in the paint (on the radio)"
	end
end

class RaceCar < Car #Inheritance
	def make_noise #same method as before but overrides previous honk method
		puts "My #{@color} car goes #{@sound.upcase}"
	end 

end

#my_car = Car.new

volvo = Car.new("Red", "Vroom")
mazda = Car.new("Yellow", "Honk")
honda = Car.new("Orange", "weeeeek")
tesla = Car.new("Black", "RRRRRR")
escalade = Car.new("Silver", "Boom")

ferrari = RaceCar.new("Red", "Vroom vroom")

# volvo.make_noise
# volvo.car_color
# mazda.make_noise
# mazda.car_color

# tesla.play_radio

# escalade.color = "Green"
# puts escalade.color

ferrari.make_noise