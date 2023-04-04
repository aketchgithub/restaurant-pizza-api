# This is a pizza-restaurant API project that implements the use of Ruby on Rails in building custom apis.

The pizza-restaurant is a simple custom web API where you can make CRUD requests to the server in implementing a Pizza-Restaurant Application.

# Ruby version
  * Ruby~v2.7.+

# How to Use the API
The following steps should get you up and running with pizza-restaurant api;

Clone the repo,
'git clone https://github.com/aketchgithub/restaurant-pizza-api'

cd pizzas-restaurant

* Install the required dependencies using bundle;

'bundle install'

Create migrations with rails

rails db:migrate

If you would like to use the seed data

rails db:seed

The project should be available locally now;

*Start the server

rails s  

or 

rails server

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

https://pizzas-restaurant-api-dqbw.onrender.com/pizzas

. GET/RETRIEVE all pizzas
. SHOW specific pizza_by[:id]
. GET/RETRIEVE individual pizza
. DELETE a pizza
. UPDATE pizza(pizza_columns)

. Restaurant

You can make all CRUD requests for the restaurant database.

https://pizzas-restaurant-api-dqbw.onrender.com/restaurants

. CREATE pizza restaurant
. GET/RETRIEVE all restaurants
. DELETE a restaurant
. UPDATE a restaurant

(When running the api endpoint locally, use http://localhost/PORTNAME/API ENDPOINT, for your requests.
