require_relative('lib/shopping_cart')
require_relative('lib/item')
require_relative('lib/fruit')
require_relative('lib/houseware')

# Application
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
