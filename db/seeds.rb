# Fill the DB with some instances we can use
puts "Cleaning the DB..."
Restaurant.destroy_all

categories = ["chinese", "italian", "japanese", "french", "belgian"]



5.times do
  restaurant_name = Faker::Restaurant.unique.name
  Restaurant.create!(
    name: restaurant_name,
    address: "#{rand(1..3)}-#{rand(1..11)} Meguro, Meguro ku, Tokyo, Japan",
    category: categories.sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
end
puts "... created #{Restaurant.count} restaurants"
