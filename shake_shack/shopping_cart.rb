class ShoppingCart
	def initialize
		@items = []
	end

	def add_to_cart(item)
		@items.push(item)
	end

	def checkout
		total = 0
		@items.each do | single_item |
			total += single_item.price
		end

		total
	end
end

class Item
	def initialize(name, price)
		@name = name
		@price = price
	end

	def price
		@price
	end
end


class HouseWare < Item
	def price
		if @price > 100
			@price * 0.95
		else
			@price
		end
	end
end

class Fruit < Item
	def price
		today = Time.now
		if today.saturday? || today.sunday?
			@price * 0.90
		else 
			@price
		end
	end
end

# Store Menu
banana = Fruit.new("Banana", 10)
vacuum = HouseWare.new("Vacuum", 150)

orange_juice = Item.new("Orenage Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)


#puts banana.price

my_cart = ShoppingCart.new
my_cart.add_to_cart(banana)
my_cart.add_to_cart(banana)
my_cart.add_to_cart(vacuum)
my_cart.add_to_cart(rice)

puts "Your total today is #{my_cart.checkout}. Have a nice day!"
