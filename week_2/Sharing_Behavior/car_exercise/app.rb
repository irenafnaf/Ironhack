require_relative('lib/engine')
require_relative('lib/car')

v8 = Engine.new("DURRRR", 400)
v6 = Engine.new("durr", 200)
electric_engine = Engine.new("wooosh", 350)

tesla = Car.new("Burr", electric_engine)
tesla.start

other_tesla = Car.new("Burr", v8)
other_tesla.start