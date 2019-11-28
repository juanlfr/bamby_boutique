# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Item.destroy_all
LineItem.destroy_all
Order.destroy_all

deer = ["https://cdn.pixabay.com/photo/2018/10/07/11/49/fallow-deer-3729821_960_720.jpg",
  "https://cdn.pixabay.com/photo/2017/09/24/20/49/biche-2783169_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/02/19/11/52/deer-1210019_960_720.jpg ",
  "https://cdn.pixabay.com/photo/2017/03/09/13/34/deer-2129667_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/10/03/10/59/deer-1711297_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/03/08/21/47/mule-deer-1244878_960_720.jpg",
  "https://cdn.pixabay.com/photo/2015/12/14/05/47/deer-1092074_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/09/27/04/03/deer-4507481_960_720.jpg",
  "https://cdn.pixabay.com/photo/2018/12/20/19/09/deer-3886591_960_720.jpg",
  "https://images.unsplash.com/photo-1571661468276-3b2dcef1a96d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  "https://cdn.pixabay.com/photo/2019/10/15/13/36/mist-4551691_960_720.jpg",
  "https://images.unsplash.com/photo-1545063914-a1a6ec821c88?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
  "https://images.unsplash.com/photo-1573497158313-7e741609697a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  "https://images.unsplash.com/photo-1531087872016-3ff254f5eaa2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1465505227174-f8b25f7caef6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=722&q=80",
  "https://images.unsplash.com/photo-1531421603354-9517510d5740?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1533582371776-be44a4a89609?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1516715069507-bfb28b3138ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=397&q=80",
  "https://cdn.pixabay.com/photo/2019/11/16/13/43/doe-4630298_960_720.jpg",
  "https://images.unsplash.com/photo-1571148739914-738933765537?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"]

name = ["Bibiche", "Son of a biche", "Biche oh my biche", "Biche volley", "Bambiche", "Colombiche", "Bichel Siemen", "What a biche", "Dark Vabich", "Bichel Berger", "Biche Club", "Bichon futé", "Bichette", "Biche France", "Eddy Bichel", "Lady Bibiche", "Biche Hallyday", "David Bowbiche", "Bichel Obama", "Guide Bichelin"]

n = 0
i = 0

20.times do
  item = Item.create(
    title: name[n],
    description: Faker::Movies::Hobbit.quote,
    price: Faker::Number.decimal(l_digits: 2),
    image_url: deer[i])
    i += 1
    n += 1
end
