# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Link.destroy_all
Link.create!(short_url: "hello", url: "http://google.com" )
Link.create!(short_url: "link1", url: "https://yahoo.com")
Link.create!(short_url: "link2", url: "https://github.com")