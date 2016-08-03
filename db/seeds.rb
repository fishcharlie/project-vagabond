# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
posts = [
	Post.create(user_id: 1, title: "Miami", summary: "hot and wild"), 
	Post.create(user_id: 1, title: "Singapore", summary: "hot and fanatical"),
	Post.create(user_id: 1, title: "Santa Fe", summary: "has that Meow Wolf thing. neat.")
]

