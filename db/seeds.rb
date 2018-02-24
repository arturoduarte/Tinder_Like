# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

History.destroy_all

10.times do
	History.create(
		title: Faker::Commerce.product_name,
		remote_picture_url: "http://lorempixel.com/600/500/",
		content: Faker::Lorem.paragraphs(1),
		user_id: User.all.ids.sample
	)
end