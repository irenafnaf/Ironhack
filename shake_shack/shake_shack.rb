class MilkShake
	def initialize
		@base_price = 3
		@ingredients = []
	end

	def add_ingredient(my_ingredient)
		@ingredients.push(my_ingredient)
	end

	def total_price
		sum = @base_price

		@ingredients.each do | single_ingredient |
			sum += single_ingredient.price
		end
	
		sum
	end
end

class Ingredient
	attr_accessor :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end


# Menu
banana = Ingredient.new("Banana", 2)
nuts = Ingredient.new("Nuts", 5)
berries = Ingredient.new("Berries", 3)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
caramel = Ingredient.new("Caramel", 1)
# Menu

my_shake = MilkShake.new
my_shake.add_ingredient(banana)
my_shake.add_ingredient(caramel)

puts my_shake.total_price


