# Attributes
	# Shields
	# Blasters
	# Speed
	# Damage (attack power)
	# Name

	# Backburner (We'll do this later)
	# Pilots
	# Power Level
	
# Actions
	# Fly
	# Warp Speed
	# Shoot
	# Attack another spaceship


class SpaceShip
	
	attr_accessor :shield, :name

	@@space_ship_counter = 0

	def initialize (name, shield, blasters, speed, damage)
		#Instance variables related to on SpaceShip
		@name = name
		@shield = shield
		@blasters = blasters
		@speed = speed
		@damage = damage
		# Class Variable, related to all SpaceShips, use sparingly
		@@space_ship_counter += 1
	end

	def fly
		puts "The spaceship is flying at #{@speed} parsecs"
	end

	def dead?
		if @shield <= 0
			true
		else
			false
		end

	end


	def attack(another_spaceship)
		another_spaceship.shield -= @damage
		puts "#{@name} hit with #{@damage}"
		puts "#{another_spaceship.name} has #{another_spaceship.shield} left"
	end

	# Class method, related to all instances of class
	def self.number_of_spaceships
		puts "The number of spaceships created: #{@@space_ship_counter}"
	end
end



