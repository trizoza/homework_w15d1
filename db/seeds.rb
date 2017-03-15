# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# show1 = Show.create({
#   title: "The Grand Tour",
#   series: 15,
#   description: "Three elderly English gentlemen review best cars in the world with unlimited budget",
#   image: "placeholder.jpg",
#   programmeID: "ghi" 
# })
User.delete_all
Show.delete_all
FavouriteShow.delete_all

crig = User.create({
  name: "Crig",
  email: "crig@gmail.com",
  password: "123456",
  password_confirmation: "123456"
  })

simon = User.create({
  name: "Simon",
  email: "simon@gmail.com",
  password: "password",
  password_confirmation: "password"
  })

show = Show.create({
  title: "The 70's Show",
  series: 6,
  description: "Bunch of high school friends smoke weed in basement and deal with life",
  image: "placeholder.jpg"
})

bakeoff = Show.create({
  title: "The Great British Bake Off",
  series: 7,
  description: "Master bakers Mary & Paul and the incomparable presenting duo of Mel & Sue are back for another interesting series about baking cakes.",
  image: "placeholder.jpg"
})

topgear = Show.create({
  title: "Top Gear",
  series: 15,
  description: "Three elderly English gentlemen review best cars in the world",
  image: "placeholder.jpg"
})

grandtour = Show.create({
  title: "The Grand Tour",
  series: 2,
  description: "Three elderly English gentlemen review best cars in the world with unlimited budget",
  image: "placeholder.jpg"
})

fraser = Show.create({
  title: "Fraser",
  series: 11,
  description: "Two psychiatrist brothers and their retired dad, ex-cop live together and have a lot of fun.",
  image: "placeholder.jpg"
})

FavouriteShow.create({user_id: crig.id, show_id: show.id})
FavouriteShow.create({user_id: crig.id, show_id: bakeoff.id})
FavouriteShow.create({user_id: crig.id, show_id: fraser.id})

FavouriteShow.create({user_id: simon.id, show_id: topgear.id})
FavouriteShow.create({user_id: simon.id, show_id: grandtour.id})