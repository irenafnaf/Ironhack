# Map

# # upper_cased = ["miami", "madrid", "barcelona"].map do | city |
# # 	city.capitalize
# # end

# # puts upper_cased

# cities = ["miami", "barcelona", "madrid"]

# # pretty_cities =  cities.map do | city |
# # 	city.capitalize
# # end

# # p pretty_cities

# pretty_cities = cities.map {|city| city.capitalize}
# end

# p pretty_cities



# Reduce

# total = [1, 2, 3].reduce do | sum, num |
# 	sum + num
# end

# puts total

# reduce example

cities = ["miami", "madrid", "barcelona"]

# total = cities.reduce(0) do | sum, city |
# 	sum + city.length
# end

# puts total/cities.length

#Each wth index

cities.each_with_index do | city, index |
	puts "#{index +1}: #{city}"
end
