Rails.application.routes.draw do
  resources :pizzas, only: [:index, :show]
  resources :restaurants, only: [:index, :show, :destroy]
  # resources :restaurant_pizzas
 
end
