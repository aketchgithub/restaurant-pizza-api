# This is a pizza-restaurant API project that implements the use of Ruby on Rails in building custom apis.

The pizza-restaurant is a simple custom web API where you can make CRUD requests to the server in implementing a Pizza-Restaurant Application.

# Ruby version
  * Ruby~v2.7.+

# How to Use the API

Clone the repo,
'git clone https://github.com/aketchgithub/restaurant-pizza-api'

cd pizzas-restaurant

* Install the required dependencies using bundle;

'bundle install'

Create migrations with rails

rails db:migrate

If you would like to use the seed data
(*Be sure to uncomment the code in the seeds.rb file)

rails db:seed

*Start the server

rails s  

# Example Relationships within the database

Pizza
.has_many :restaurant_pizzas
 .has_many :restaurants, through: :restaurant_pizzas

Restaurant
. has_many :restaurant_pizzas
. has_many :pizzas, through: :restaurant_pizzas

Restaurant_pizza
. belongs_to :restaurant
. belongs_to :pizza 

# Requests You can make with the API

. Pizzas
You can make all CRUD requests for the user using the endpoint;

http://localhost:3000/pizzas

. GET/RETRIEVE all pizzas
. SHOW specific pizza_by[:id]
. GET/RETRIEVE individual pizza
. DELETE a pizza
. UPDATE pizza(pizza_columns)

. Restaurant

You can make all CRUD requests for the restaurant database.

http://localhost:3000/restaurants

. CREATE pizza restaurant
. GET/RETRIEVE all restaurants
. DELETE a restaurant
. UPDATE a restaurant
