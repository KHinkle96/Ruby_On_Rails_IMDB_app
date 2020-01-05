# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
ratings = ['E', 'E10', 'T', 'M']
10.times do |number|
    Game.create({
        title: Faker::Game.title,
        release_date: Faker::Date.between(from: 62.years.ago, to: Date.today),
        rating: ratings.sample,
        console: Faker::Game.platform
    })
end