class ShakeShop
	def initialize
		@shakes = []
	end

	def add_shake(milkshake)
		@shakes.push(milkshake)
	end

	def checkout
		total = 0
		@shakes.each do | single_shake |
		total += single_shake.total_price
		end
		puts "Your price of the day was: #{total}, have a nice day!}"
	end
end



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

# My Shake
my_shake = MilkShake.new
my_shake.add_ingredient(banana)
my_shake.add_ingredient(caramel)

#puts my_shake.total_price

# Faraz's Shake
farazs_shake = MilkShake.new
farazs_shake.add_ingredient(berries)
farazs_shake.add_ingredient(nuts)

# My New Shop
irenes_shop = ShakeShop.new
irenes_shop.add_shake(my_shake)
irenes_shop.add_shake(farazs_shake)
irenes_shop.checkout


