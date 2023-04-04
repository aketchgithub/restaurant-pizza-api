require 'faker'

puts "📃 Seeding data..."

# Create 5 restaurant records
5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address
  )
end

# Create 10 pizza records
10.times do
  Pizza.create!(
    name: Faker::Food.dish
  )
end

# Create 10 restaurant_pizza records
10.times do
  restaurant_pizza = RestaurantPizza.create!(
    restaurant: Restaurant.order("RANDOM()").first,
    pizza: Pizza.order("RANDOM()").first,
    price: rand(1..30)
  )
  puts "Created restaurant_pizza: #{restaurant_pizza.inspect}"
end

puts "✅ Done seeding"
