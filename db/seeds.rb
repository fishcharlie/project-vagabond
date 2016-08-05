# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Post.delete_all
City.delete_all

cities = [
	City.create(
		id: 1,
		name: "Denver", 
		description: "Lumbersexual portland cray, franzen meggings asymmetrical VHS swag tofu brooklyn jean shorts hella marfa. Before they sold out selfies leggings, twee hashtag ethical mlkshk sriracha narwhal occupy truffaut godard try-hard. Godard cornhole heirloom schlitz XOXO. Shabby chic williamsburg celiac locavore fap, kogi pug chartreuse fingerstache. Green juice organic PBR&B art party VHS. Freegan four loko authentic, bespoke williamsburg squid kinfolk celiac letterpress green juice franzen man braid organic humblebrag. Plaid ethical vegan neutra PBR&B semiotics.", 
		keywords: ["fun", "granola", "subarus"],
		photo_url: "http://denveryoungprofessionals.com/wp-content/uploads/2015/01/denver-skyline.jpg"),
	City.create(
		id: 2,
		name: "Portland", 
		description: "Lumbersexual portland cray, franzen meggings asymmetrical VHS swag tofu brooklyn jean shorts hella marfa. Before they sold out selfies leggings, twee hashtag ethical mlkshk sriracha narwhal occupy truffaut godard try-hard. Godard cornhole heirloom schlitz XOXO. Shabby chic williamsburg celiac locavore fap, kogi pug chartreuse fingerstache. Green juice organic PBR&B art party VHS. Freegan four loko authentic, bespoke williamsburg squid kinfolk celiac letterpress green juice franzen man braid organic humblebrag. Plaid ethical vegan neutra PBR&B semiotics.", 
		keywords: ["weird", "small batch", "mustache"],
		photo_url: "https://www.phase2technology.com/wp-content/uploads/2014/06/Portland.jpg"),
	City.create(
		id: 3,		
		name: "Seattle", 
		description: "Lumbersexual portland cray, franzen meggings asymmetrical VHS swag tofu brooklyn jean shorts hella marfa. Before they sold out selfies leggings, twee hashtag ethical mlkshk sriracha narwhal occupy truffaut godard try-hard. Godard cornhole heirloom schlitz XOXO. Shabby chic williamsburg celiac locavore fap, kogi pug chartreuse fingerstache. Green juice organic PBR&B art party VHS. Freegan four loko authentic, bespoke williamsburg squid kinfolk celiac letterpress green juice franzen man braid organic humblebrag. Plaid ethical vegan neutra PBR&B semiotics.", 
		keywords: ["Not LA", "rainy", "grunge"],
		photo_url: "http://pydata.org/seattle2015/static/images/TiffanyVonArnim-Seattle.jpg"),
]

users = [
	User.create(
		id: 1,
		first_name: "Greg", 
		last_name: "Brunk", 
		current_city: "Denver, CO",
		profile_photo: "http://celebrityinside.com/wp-content/uploads/2015/01/Brad-Pitt.jpg",
		password_digest: "password",
		email: "greg.brunk@gmail.com")
]

posts = [
	Post.create(
		city_id: 1,
		user_id: 1, 
		title: "Amazing Museums!", 
		summary: "Lumbersexual portland cray, franzen meggings asymmetrical VHS swag tofu brooklyn jean shorts hella marfa. Before they sold out selfies leggings, twee hashtag ethical mlkshk sriracha narwhal occupy truffaut godard try-hard. Godard cornhole heirloom schlitz XOXO. Shabby chic williamsburg celiac locavore fap, kogi pug chartreuse fingerstache. Green juice organic PBR&B art party VHS. Freegan four loko authentic, bespoke williamsburg squid kinfolk celiac letterpress green juice franzen man braid organic humblebrag. Plaid ethical vegan neutra PBR&B semiotics.", 
		date_created: "May 22, 2011"),
	Post.create(
		city_id: 1,
		user_id: 1, 
		title: "Coolest Place in Denver", 
		summary: "Pug waistcoat kitsch kale chips bespoke narwhal. Williamsburg raw denim polaroid, paleo banh mi organic church-key butcher forage chia cardigan synth typewriter green juice. Sriracha shabby chic gastropub farm-to-table yr. Selfies sartorial yr, cronut tacos ennui cred try-hard pinterest listicle chicharrones stumptown blue bottle typewriter.", 
		date_created: "Sep 01, 2015"),
	Post.create(
		city_id: 1,
		user_id: 1, 
		title: "Go to the mountains!", 
		summary: "Scenester pickled kale chips actually marfa paleo. Cliche pour-over asymmetrical farm-to-table. Next level ugh kale chips skateboard craft beer. Umami intelligentsia drinking vinegar trust fund, offal neutra tacos you probably haven't heard of them.", 
		date_created: "Aug 04, 2016")
]