# def eat(food)
# 	puts "Eats some #{food}"
# end

# eat("Pizza")

# # def find_occurrences
# # end

# i = 0

# while i <= 42
# 	puts i += 1
# end

foods = ["Pizza", "Cookies", "Bread"]

# EACH
foods.each do |food|
	puts food
end

#MAP

caps_foods = foods.map do | food |
	food.upcase
end
p caps_foods

# REDUCE

nums = [2, 6, 7, 42]
total = nums.reduce do |sum, num|
	sum + num
end
p total

# SELECT - new array filtered down taking out certain elements from it

breadless = foods.select do |food|
	food != "Bread"
end

# CONDITIONS - IF...ELSE

food = "Pizza"
if food == "Pizza"
	puts "Pizza is my favorite food too!"
elsif food == "Sushi"
	puts "Sushi is pretty good too..."
else 
	puts "That's weird"
end


def add (a, b)
	a+b
end

my_number = add(2,2)
		


