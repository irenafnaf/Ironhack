# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

contact_book = [
["Mario", "Mario's Address", "7863457896", "mario@gmail.com"],
["Luigi", "Luigi's Address", "7863456432", "luigi@gmail.com"],
["Toad", "Toad's Address", "7863456632", "toad@gmail.com"],
["Peach", "Peach's Address", "7863457809", "peach@gmail.com"],
["Bowser", "Bowser's Address", "7863452456", "bowser@gmail.com"],

]


contact_book.each do |name, address, phone, email|
	Contact.create(name: name, address: address, phone: phone, email:email)
end