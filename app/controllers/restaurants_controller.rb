class RestaurantsController < ApplicationController
  wrap_parameters format: []

  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index 
    restaurants = Restaurant.all 
    render json: restaurants.as_json(only: [:id, :name, :address])
  end

  def show
    restaurant = find_restaurant
    render json: restaurant.as_json(include: { pizzas: { only: [:id, :name, :ingredients] } }, only: [:id, :name, :address])
  end

  def destroy
    restaurant = find_restaurant
    restaurant.restaurant_pizzas.destroy_all
    restaurant.destroy
    head :no_content
  end

  private

  def find_restaurant
    Restaurant.find_by(id: params[:id]) || raise(ActiveRecord::RecordNotFound)
  end

  def render_not_found_response
    render json: { error: "Restaurant not found" }, status: :not_found
  end
end
