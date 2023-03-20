Rails.application.routes.draw do
  resources :pizzas, only: [:index, :show]
  resources :restaurants, only: [:index, :create]
  # resources :restaurant_pizzas
 
end
