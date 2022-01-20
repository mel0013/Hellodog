# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

User.destroy_all
Dog.destroy_all

puts "database cleared"

puts "creating user account: Melinda"
melinda = User.create!(first_name: 'Melinda', email: 'mel@hellodog.me', password: 'mypassword')

puts "creating user account: Elana"
elana = User.create!(first_name: 'Elana', email: 'elana@hellodog.me', password: 'mypassword')

puts "creating user account: Mardina"
mardina = User.create!(first_name: 'Mardina', email: 'mardina@hellodog.me', password: 'mypassword')

puts "creating user account: Ian"
ian = User.create!(first_name: 'Ian', email: 'ian@hellodog.me', password: 'mypassword')

puts "creating user account: Anna"
anna = User.create!(first_name: 'Anna', email: 'anna@hellodog.me', password: 'mypassword')

puts "creating user account: Fred"
fred = User.create!(first_name: 'Fred', email: 'fred@hellodog.me', password: 'mypassword')

puts "creating user account: Samantha"
samantha = User.create!(first_name: 'Samantha', email: 'samantha@hellodog.me', password: 'mypassword')

puts "creating user account: Chelle"
chelle = User.create!(first_name: 'Chelle', email: 'chelle@hellodog.me', password: 'mypassword')

puts "creating user account: Will"
will = User.create!(first_name: 'Will', email: 'will@hellodog.me', password: 'mypassword')

puts "creating user account: Faye"
faye = User.create!(first_name: 'Faye', email: 'faye@hellodog.me', password: 'mypassword')


puts "Creating dog profiles"
dog1 = Dog.create!(
  name: 'Mackey',
  birth_month: '1',
  birth_year: '2018',
  gender: 'Male',
  size: 'M (10-20kg)',
  breed: 'Border Collie',
  energy_level: 'Medium',
  vaccinated: 'Yes',
  suburb: 'Melbourne CBD',
  neutered: 'Yes',
  user_id: elana.id
)

file1 = URI.open('https://images.unsplash.com/photo-1611468983256-8374e2460484?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1017&q=80')
dog1.photo.attach(io: file1, filename: 'dog1.png', content_type: 'image/png')

dog2 = Dog.create!(
  name: 'Max',
  birth_month: '0',
  birth_year: '2017',
  gender: 'Male',
  size: 'L (20-40kg)',
  breed: 'Labrador',
  energy_level: 'Low',
  vaccinated: 'Yes',
  suburb: 'Brighton',
  neutered: 'Yes',
  user_id: mardina.id
)

file2 = URI.open('https://images.unsplash.com/photo-1529831129093-0fa4866281ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80')
dog2.photo.attach(io: file2, filename: 'dog2.png', content_type: 'image/png')

dog3 = Dog.create!(
  name: 'Bella',
  birth_month: '5',
  birth_year: '2019',
  gender: 'Female',
  size: 'S (5-10kg)',
  breed: 'Corgi',
  energy_level: 'Medium',
  vaccinated: 'Yes',
  suburb: 'Williamstown',
  neutered: 'Yes',
  user_id: melinda.id
)

file3 = URI.open('https://images.unsplash.com/photo-1589965716319-4a041b58fa8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2574&q=80')
dog3.photo.attach(io: file3, filename: 'dog3.png', content_type: 'image/png')

dog4 = Dog.create!(
  name: 'Jasper',
  birth_month: '5',
  birth_year: '2017',
  gender: 'Male',
  size: 'M (10-20kg)',
  breed: 'Poodle',
  energy_level: 'Medium',
  vaccinated: 'Yes',
  suburb: 'Richmond',
  neutered: 'Yes',
  user_id: ian.id
)

file4 = URI.open('https://res.cloudinary.com/mel0013/image/upload/v1642215363/hellodog/jasper_wowmj3.jpg')
dog4.photo.attach(io: file4, filename: 'dog4.png', content_type: 'image/png')

dog5 = Dog.create!(
  name: 'Lola',
  birth_month: '5',
  birth_year: '2017',
  gender: 'Female',
  size: 'M (10-20kg)',
  breed: 'Border-Collie',
  energy_level: 'Medium',
  vaccinated: 'Yes',
  suburb: 'Williamstown',
  neutered: 'Yes',
  user_id: anna.id
)

file5 = URI.open('https://images.unsplash.com/photo-1587300003388-59208cc962cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
dog5.photo.attach(io: file5, filename: 'dog5.png', content_type: 'image/png')

dog6 = Dog.create!(
  name: 'Milo',
  birth_month: '0',
  birth_year: '2020',
  gender: 'Male',
  size: 'XS (1-5kg)',
  breed: 'Italian Greyhound',
  energy_level: 'Medium',
  vaccinated: 'Yes',
  suburb: 'Melbourne CBD',
  neutered: 'Yes',
  user_id: fred.id
)

file6 = URI.open('https://images.unsplash.com/photo-1564067886520-e1ff2767eb1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1174&q=80')
dog6.photo.attach(io: file6, filename: 'dog6.png', content_type: 'image/png')

dog7 = Dog.create!(
  name: 'Daisy',
  birth_month: '0',
  birth_year: '2020',
  gender: 'Female',
  size: 'XS (1-5kg)',
  breed: 'Pug',
  energy_level: 'Low',
  vaccinated: 'Yes',
  suburb: 'South Yarra',
  neutered: 'Yes',
  user_id: samantha.id
)

file7 = URI.open('https://images.unsplash.com/photo-1511431833882-509a76113392?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1141&q=80')
dog7.photo.attach(io: file7, filename: 'dog7.png', content_type: 'image/png')

dog8 = Dog.create!(
  name: 'Chalky',
  birth_month: '0',
  birth_year: '2019',
  gender: 'Male',
  size: 'L (20-40kg)',
  breed: 'Kelpie x German Shepherd',
  energy_level: 'High',
  vaccinated: 'Yes',
  suburb: 'Sandringham',
  neutered: 'No',
  user_id: chelle.id
)

file8 = URI.open('https://images.unsplash.com/photo-1515376648559-4b3e931f07a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
dog8.photo.attach(io: file8, filename: 'dog8.png', content_type: 'image/png')

dog9 = Dog.create!(
  name: 'Jimmy Chew',
  birth_month: '1',
  birth_year: '2018',
  gender: 'Male',
  size: 'M (10-20kg)',
  breed: 'Chow Chow',
  energy_level: 'Low',
  vaccinated: 'Yes',
  suburb: 'Boxhill',
  neutered: 'No',
  user_id: will.id
)

file9 = URI.open('https://images.unsplash.com/photo-1569263321605-c70cb08d1d68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
dog9.photo.attach(io: file9, filename: 'dog9.png', content_type: 'image/png')

dog10 = Dog.create!(
  name: 'Malty',
  birth_month: '1',
  birth_year: '2019',
  gender: 'Male',
  size: 'XS (1-5kg)',
  breed: 'Maltese',
  energy_level: 'Low',
  vaccinated: 'Yes',
  suburb: 'Deer Park',
  neutered: 'Yes',
  user_id: faye.id
)

file10 = URI.open('https://images.unsplash.com/photo-1446730853965-62433e868929?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
dog10.photo.attach(io: file10, filename: 'dog10.png', content_type: 'image/png')

puts "Finished! Created #{dog4.name}, #{dog3.name}, #{dog2.name}, #{dog1.name}, #{dog5.name}"
puts "Finished! Created #{dog6.name}, #{dog7.name}, #{dog8.name}, #{dog9.name}, #{dog10.name} "
