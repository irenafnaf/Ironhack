# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



concerts = [
	["Prince", "Purple Rain", "St. Louis", DateTime.current, 300, "Prince's last concert!"],
	["Tupac", "Thugh Life", "Los Angeles", DateTime.current, 540, "Las Vegas Strip"],
	["Shakira", "La Bicicleta", "Miami", DateTime.current, 638, "Back to Colombian roots with Carlos Vives"],
	["Michael Jackson", "Neverland", "New York", DateTime.current, 983, "Neverland back to life"],
	["Backstreet Boys", "Reunion", "Los Angeles", DateTime.current, 390, "Reunion Tour"],
		]

concerts.each do |artist, venue, city, date, price, description|
	Concert.create(artist: artist, venue: venue, city: city, date: date, price: price, description: description)
end

