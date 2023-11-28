# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# Example:
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
Event.destroy_all
Category.destroy_all

puts 'Creating users...'
user1 = User.create!(
  email: 'user1@example.com',
  password: 'password123',
  first_name: 'Mabel',
  last_name: 'Dae',
  birth_date: '1927-01-01',
  description: 'I am a user',
  city: 'Nantes',
  creator: false,
)

user2 = User.create!(
  email: 'user2@example.com',
  password: 'password123',
  first_name: 'Daenerys',
  last_name: 'Targaryen',
  birth_date: '1925-01-01',
  description: 'Queen of the Andals',
  city: 'Amsterdam',
  creator: false,
)

user3 = User.create!(
  email: 'user3@example.com',
  password: 'password123',
  first_name: 'Lucy',
  last_name: 'Liu',
  birth_date: '1928-01-01',
  description: 'Cool chick',
  city: 'Paris',
  creator: false,
)

user4 = User.create!(
  email: 'user4@example.com',
  password: 'password123',
  first_name: 'Natalie',
  last_name: 'Portman',
  birth_date: '1935-01-01',
  description: 'The best',
  city: 'Nantes',
  creator: false,
)

user5 = User.create!(
  email: 'user5@example.com',
  password: 'password123',
  first_name: 'John',
  last_name: 'Doe',
  birth_date: '1927-01-01',
  description: 'I am a user',
  city: 'Nantes',
  creator: false,
)

puts 'Creating categories...'

category1 = Category.create!(
  name: 'Concert'
)

category2 = Category.create!(
  name: 'Exhibition'
)

category3 = Category.create!(
  name: 'Festival'
)

category4 = Category.create!(
  name: 'Workshop'
)

category5 = Category.create!(
  name: 'Party'
)

category6 = Category.create!(
  name: 'Garden Show'
)

category7 = Category.create!(
  name: 'Dog Show'
)

category8 = Category.create!(
  name: 'Cat Show'
)

category9 = Category.create!(
  name: 'Bird Show'
)

puts 'Creating events...'


Event.create!(
  title: 'Concert',
  short_description: 'A concert',
  long_description: 'A concert very cool very nice',
  address: '10 passage de la poule noire 44000 Nantes',
  city: 'Nantes',
  event_date: '2021-01-01',
  limit_participants: 10,
  user_id: user1,
  category_id: category1,
)

Event.create!(
  title: 'Exhibition',
  short_description: 'An exhibition',
  long_description: 'An exhibition very cool very nice',
  address: '10 passage de la poule noire 44000 Nantes',
  city: 'Paris',
  event_date: '2025-01-01',
  limit_participants: 1,
  user_id: user2,
  category_id: category2
)

Event.create!(
  title: 'Festival',
  short_description: 'A festival',
  long_description: 'A festival very cool very nice',
  address: '10 passage de la poule noire 44000 Nantes',
  city: 'Amsterdam',
  event_date: '2028-01-01',
  limit_participants: 100,
  user_id: user3,
  category_id: category7
)

Event.create!(
  title: 'Workshop',
  short_description: 'A workshop',
  long_description: 'A workshop very cool very nice',
  address: '10 passage de la poule noire 44000 Nantes',
  city: 'Nantes',
  event_date: '2021-01-01',
  limit_participants: 19,
  user_id: user1,
  category_id: category4
)

Event.create!(
  title: 'Concert',
  short_description: 'A concert',
  long_description: 'A concert very cool very nice',
  address: '10 passage de la poule noire 44000 Nantes',
  city: 'Le Mans',
  event_date: '2023-12-01',
  limit_participants: 10,
  user_id: user5,
  category_id: category1
)

Event.create!(
  title: 'Party',
  short_description: 'A party',
  long_description: 'A party very cool very nice',
  address: '10 passage de la poule noire 44000 Nantes',
  city: 'Nantes',
  event_date: '2021-01-01',
  limit_participants: 30,
  user_id: user1,
  category_id: category8
)

Event.create!(
  title: 'Garden Show',
  short_description: 'A garden show',
  long_description: 'A garden show very cool very nice',
  address: '10 passage de la poule noire 44000 Nantes',
  city: 'Nantes',
  event_date: '2024-01-01',
  limit_participants: 90,
  user_id: user3,
  category_id: category8
)

Event.create!(
  title: 'Dog Show',
  short_description: 'A dog show',
  long_description: 'A dog show very cool very nice',
  address: '10 passage de la poule noire 44000 Nantes',
  city: 'Paris',
  event_date: '2024-01-01',
  limit_participants: 78,
  user_id: user4,
  category_id: category9
)
