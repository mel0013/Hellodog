# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Dog.destroy_all
Invitation.destroy_all

puts "database cleared"

puts "creating user account: Melinda"
melinda = User.create!(name: 'Melinda', email: 'mel@hellodog.com', password: 'mypassword')

puts "creating user account: Elana"
elana = User.create!(name: 'Elana', email: 'elana@hellodog.com', password: 'mypassword')

puts "creating user account: Mardina"
mardina = User.create!(name: 'Mardina', email: 'mardina@hellodog.com', password: 'mypassword')


puts "Creating 6 dog profiles"
dog1 = Dog.create!(
  name: 'Mackey',
  age: '4',
  gender: 'Male',
  size: 'Medium',
  breed: 'Border Collie',
  energy_level: 'Medium-Energy',
  vacciniated: 'true',
  suburb: 'Melbourne CBD',
  neutered: 'false',
  user_id: elana.id,
  images: File.open(Rails.root.join('app', 'assets', 'images', 'Mackey.jpg'))
)
dog2 = Dog.create!(
  name: 'Max',
  age: '10',
  gender: 'Male',
  size: 'large',
  breed: 'Labrador',
  energy_level: 'Low-Energy',
  vacciniated: 'true',
  suburb: 'Brighton',
  neutered: 'true',
  user_id: elana.id,
  images: 'https://images.unsplash.com/photo-1537204696486-967f1b7198c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2574&q=80'
)
dog3 = Dog.create!(
  name: 'Bella',
  age: '2',
  gender: 'Female',
  size: 'Small',
  breed: 'Corgi',
  energy_level: 'Medium-Energy',
  vacciniated: 'true',
  suburb: 'Williamstown',
  neutered: 'true',
  user_id: elana.id,
  images: 'https://images.unsplash.com/photo-1589965716319-4a041b58fa8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2574&q=80'
)
dog4 = Dog.create!(
  name: 'Ty',
  age: '1',
  gender: 'Male',
  size: 'Large',
  breed: 'Grey Hound',
  energy_level: 'Medium-Energy',
  vacciniated: 'true',
  suburb: 'Melbourne CBD',
  neutered: 'false',
  user_id: elana.id,
  images: 'https://images.unsplash.com/photo-1579556648987-884b45d007f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'
)
dog4 = Dog.create!(
  name: 'Ruby',
  age: '5',
  gender: 'Female',
  size: 'Large',
  breed: 'Bernese Mountain dog',
  energy_level: 'Medium-Energy',
  vacciniated: 'true',
  suburb: 'Dandenong',
  neutered: 'true',
  user_id: elana.id,
  images: 'https://images.unsplash.com/photo-1560605802-3b033f2f8c16?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80'
)
dog5 = Dog.create!(
  name: 'Maggie',
  age: '6',
  gender: 'Female',
  size: 'Small',
  breed: 'Chow Chow',
  energy_level: 'High-Energy',
  vacciniated: 'true',
  suburb: 'Fitzroy',
  neutered: 'true',
  user_id: elana.id,
  images: 'https://images.unsplash.com/photo-1591300673309-092e8afa699b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2574&q=80'
)
dog6 = Dog.create!(
  name: 'Ceasar',
  age: '4',
  gender: 'Male',
  size: 'Large',
  breed: 'Rottweiler',
  energy_level: 'High-Energy',
  vacciniated: 'true',
  suburb: 'Essendon',
  neutered: 'true',
  user_id: elana.id,
  images: 'https://images.unsplash.com/photo-1638788555971-39ffa480fc2e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80'
)

puts "Finished!"
