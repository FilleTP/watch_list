# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

titles = []
100.times do
  titles << Faker::Movie.title
end

titles.uniq!

20.times do
  Movie.create!(
    title: titles[0],
    overview: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
    poster_url: "https://source.unsplash.com/featured/?#{titles[0]}",
    rating: (1..10).to_a.sample
  )
  titles.delete_at(0)
end
