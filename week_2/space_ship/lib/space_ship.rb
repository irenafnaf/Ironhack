# Attributes
	# Shields
	# Blasters
	# Speed

	# Backburner (We'll do this later)
	# Pilots
	# Power Level
	
# Actions
	# Fly
	# Warp Speed
	# Shoot


class SpaceShip
	@@space_ship_counter = 0

	def initialize (shield, blasters, speed)
		#Instance variables related to on SpaceShip
		@shield = shield
		@blasters = blasters
		@speed = speed
		# Class Variable, related to all SpaceShips, use sparingly
		@@space_ship_counter += 1
	end

	def fly
		puts "The spaceship is flying at #{@speed} parsecs"
	end

	# Class method, related to all instances of class
	def self.number_of_spaceships
		puts "The number of spaceships created: #{@@space_ship_counter}"
	end
end



