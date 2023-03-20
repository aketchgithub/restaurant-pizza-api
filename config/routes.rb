Rails.application.routes.draw do
  # resources :pizzas
  resources :restaurants, only: [:index, :create]
  # resources :restaurant_pizzas
 
end
