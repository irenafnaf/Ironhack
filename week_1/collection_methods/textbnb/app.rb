
require_relative('lib/home')

homes = [
  Home.new("Irene's Apartment", "Bogota", 5, 150),
  Home.new("Alejandra's Loft", "New York", 3, 200),
  Home.new("Eduardo's Dorm", "State College", 2, 50),
  Home.new("Sergio's Country House", "Villeta", 10, 300),
  Home.new("Beatriz's Beach House", "Miami", 6, 200),
  Home.new("Cristina's Townhouse", "Cartagena", 4, 130),
  Home.new("Julio's Apartment", "Fort Lauderdale", 3, 180),
  Home.new("Michael's House", "Cartagena", 5, 160),
  Home.new("Maria's Loft", "South Beach", 3, 220),
  Home.new("Nico's Apartment", "Washington", 4, 150)
]


# homes.each do |hm|
#   puts hm.name
# end


# sorted = homes.sort do |home1, home2|
#   home1.price <=> home2.price
# end

# puts "SORTED FROM LOWEST TO HIGHEST PRICE:"

# sorted.each do |hm|
#   puts "#{hm.name} - $#{hm.price}"
# end

# sorted = homes.sort do |home1, home2|
#   home2.price <=> home1.price
# end

# puts "SORTED FROM HIGHEST TO LOWEST PRICE:"

# sorted.each do |hm|
#   puts "#{hm.name} - $#{hm.price}"
# end

# sorted = homes.sort do |home1, home2|
#   home1.capacity <=> home2.capacity
# end

# puts "SORTED BY CAPACITY:"

# sorted.each do |hm|
#   puts "#{hm.name} - #{hm.capacity}"
# end

# cartagena_homes = homes.select do |hm|
#   hm.city == "Cartagena"
# end

# puts "HOMES IN CARTAGENA:"

# cartagena_homes.each do |hm|
#   puts "#{hm.name}"
# end

# avg_price = homes.reduce(0) do | sum, hm|
#   sum + hm.price
# end

# puts "The average price is:"
# puts avg_price / homes.length

# home_200_dollars = homes.find do |hm|
#   hm.price == 200
# end

# puts "The home that costs $200 is:"
# puts home_200_dollars.name

