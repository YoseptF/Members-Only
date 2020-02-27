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

User.create(
  username: 'Javier',
  email: 'javier@texmex.mx',
  password: 'javier',
  password_confirmation: 'javier'
)

Post.create(
  user_id: 1,
  content: Faker::Lorem.words(number:12)
)

Post.create(
  user_id: 2,
  content: Faker::Lorem.sentence(word_count:12)
)
