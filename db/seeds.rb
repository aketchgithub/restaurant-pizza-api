require 'faker'

# Create 5 restaurant records
puts "📃 Seeding data..."

5.times do
    Restaurant.create!(
      name: Faker::Restaurant.name,
      address: Faker::Address.street_address
    )
  end
  
  # Create 10 pizza records and associate each with a random restaurant record
#   10.times do
#     restaurant = Restaurant.all.sample
#     pizza = Pizza.create!(
#       name: Faker::Food.dish,
#       ingredients: Faker::Food.ingredient,
#       price: Faker::Number.decimal(l_digits: 2)
#     )
#     restaurant.pizzas << pizza
#   end


10.times do
    restaurant_pizza = RestaurantPizza.create!(
      restaurant: Restaurant.order("RANDOM()").first,
      pizza: Pizza.order("RANDOM()").first,
      price: rand(1..30)
    )
    puts "Created restaurant_pizza: #{restaurant_pizza.inspect}"
  end

puts "✅ Done seeding"