# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  username: 'Pablo360',
  email: 'pablito@texmex.mx',
  password: 'pablito',
  password_confirmation: 'pablito'
)

Post.create(
  user_id: 1,
  content: "SOMEONE HELP ME!! I DON'T UNDERSTAND ANYTHING!!!!!!\n Are they all possesed?"
)

25.times do |time|
  User.create(
    username: Faker::Name.name,
    email: "mail_#{time}@gmail.com",
    password: "foobar",
    password_confirmation: "foobar",
  )
end

45.times do |time|
  Post.create(
    user_id: Random.rand(1..26),
    content: Faker::Lorem.sentence(word_count:12)
  )
end