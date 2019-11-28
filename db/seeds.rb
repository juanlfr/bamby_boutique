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

20.times do
  item = Item.create(
    title: Faker::Book.title,
    description: Faker::Movies::Hobbit.quote,
    price: Faker::Number.decimal(l_digits: 2),
    image_url: Faker::Avatar.image
  )
end
