# require 'faker'

# # Create 10 pizzas
# 10.times do
#   Pizza.create!(
#     name: Faker::Food.dish,
#     ingredients: Faker::Food.ingredient,
#     price: Faker::Commerce.price(range: 5..15.0, as_string: true)
#   )
# end

# # Create 5 restaurants
# 5.times do
#   restaurant = Restaurant.create!(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.full_address
#   )

# #   RestaurantPizzas.create(
# #           restaurant: restaurant,
# #           pizza: pizza,
# #           price: rand(1.0..30.0)
# #         )


#   # Add between 1 and 3 pizzas to each restaurant
#   rand(1..3).times do
#     restaurant.pizzas << Pizza.order("RANDOM()").first
#   end

  
# end 

# # Create 10 restaurants
# # 10.times do
# #   restaurant = Restaurant.create(
# #     name: Faker::Restaurant.name,
# #     address: Faker::Address.full_address
# #   )

# #   # Add 3 pizzas to each restaurant
# #   3.times do
# #     pizza = Pizza.create(
# #       name: Faker::Food.dish,
# #       ingredients: Faker::Food.ingredient,
# #       price: rand(1.0..30.0)
# #     )

# #     RestaurantPizza.create(
# #       restaurant: restaurant,
# #       pizza: pizza,
# #       price: rand(1.0..30.0)
# #     )
# #   end
# # end
