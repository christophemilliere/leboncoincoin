# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

emails = %w(toto@free.fr titi@free.fr tutu@free.fr alfred@free.fr)
emails.each do |email|
  User.create!( email: email,
                    password: '12345678',
                    password_confirmation: '12345678',
                  )
end

categories = %w(Meuble vidéo Téléphone)

categories.each do |category|
  Category.create!(name: category)
end


categories = Category.all.pluck(:id)
users = User.all.pluck(:id)
r = [0, 1]
6.times do
  Annonce.create!(
  title: Faker::Lorem.sentence(3, true, 1),
  category_id: categories.sample,
  represent: r.sample,
  description: Faker::Lorem.sentence(3, true, 10),
  city: Faker::Address.city_prefix,
  zip_code:Faker::Address.zip_code,
  price: Faker::Commerce.price,
  user_id: users.sample
    )
end
