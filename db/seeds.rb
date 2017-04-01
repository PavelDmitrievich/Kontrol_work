# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fixtures_path = Rails.root.join('app', 'assets', 'images')

admin = User.create!(name: 'Admin',
										email: 'admin@admin.com', 
										password: 'qweqwe', 
										password_confirmation: 'qweqwe', 
										admin: true)

user1 = User.create!(name: Faker::StarWars.character,
										email: 'user1@gmail.com',
										password: '123456',
										password_confirmation: '123456')

user2 = User.create!(name: Faker::StarWars.character,
										email: 'user2@gmail.com',
										password: '123456',
										password_confirmation: '123456')

user3 = User.create!(name: Faker::StarWars.character,
										email: 'user3@gmail.com',
										password: '123456',
										password_confirmation: '123456')

image1 = Image.create!(name: Faker::StarWars.character,
					user_id: user3.id,
					image: File.new(fixtures_path.join('default_shop1.png')))

image2 = Image.create!(name: Faker::Company.name,
					user_id: user3.id,
					image: File.new(fixtures_path.join('default_shop2.png')))

image3 = Image.create!(name: Faker::Company.name,
					user_id: user3.id,
					image: File.new(fixtures_path.join('default_shop3.png')))

image4 = Image.create!(name: Faker::Company.name,
					user_id: user3.id,
					image: File.new(fixtures_path.join('default_shop4.png')))

image5 = Image.create!(name: Faker::Company.name,
					user_id: user3.id,
					image: File.new(fixtures_path.join('default_shop5.png')))

image6 = Image.create!(name: Faker::Company.name,
					user_id: user3.id,
					image: File.new(fixtures_path.join('default_shop6.png')))

image1 = Image.create!(name: Faker::StarWars.character,
					user_id: user2.id,
					image: File.new(fixtures_path.join('default_shop1.png')))

image2 = Image.create!(name: Faker::Company.name,
					user_id: user2.id,
					image: File.new(fixtures_path.join('default_shop2.png')))

image3 = Image.create!(name: Faker::Company.name,
					user_id: user2.id,
					image: File.new(fixtures_path.join('default_shop3.png')))

image4 = Image.create!(name: Faker::Company.name,
					user_id: user2.id,
					image: File.new(fixtures_path.join('default_shop4.png')))

image5 = Image.create!(name: Faker::Company.name,
					user_id: user2.id,
					image: File.new(fixtures_path.join('default_shop5.png')))

image6 = Image.create!(name: Faker::Company.name,
					user_id: user2.id,
					image: File.new(fixtures_path.join('default_shop6.png')))