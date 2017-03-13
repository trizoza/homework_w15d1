# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

show1 = Show.create({
  title: "The Grand Tour",
  series: 15,
  description: "Three elderly English gentlemen review best cars in the world with unlimited budget",
  image: "placeholder.jpg",
  programmeID: "ghi" 
})