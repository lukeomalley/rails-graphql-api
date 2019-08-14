# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all
User.destroy_all

100.times do
  user = User.create(name: Faker::Name.name, email: Faker::Internet.email)
  5.times do
    Book.create(
      title: Faker::Book.title,
      author: Faker::Book.author,
      rating: Faker::Number.number(digits: 1),
      cover_img_url: 'https://source.unsplash.com/random/400x400',
      user: user
    )
  end
end
