# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




fakeFriend = Contact.create(name: 'Fakyyyyyyyyy Fakerson', birthdate: DateTime.new(2015, 6, 22), gift: false)


30.times do
  Contact.create([{
  name: Faker::FunnyName.three_word_name,
  birthdate: Faker::Date.between(from: '1970-03-12', to: '2000-01-24'),
  gift: Faker::Boolean.boolean(true_ratio: 0.7)
  }])
end

user_one = User.create!(email: 'wuennik@live.com', password: 'verySecret', password_confirmation: 'verySecret')



puts 'seeded users successfully'
