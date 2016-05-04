require_relative('lib/space_ship')

# Before creating any spaceships
SpaceShip.number_of_spaceships

millenium_falcon = SpaceShip.new(100, "Mega Blaster Ray", 9001)
falcon_nine = SpaceShip.new(100, "Elon Musk Blaster Cannon", 11000)

# After we've created a couple of spaceships
SpaceShip.number_of_spaceships


millenium_falcon.fly
# => "Flying at #{speed}"

