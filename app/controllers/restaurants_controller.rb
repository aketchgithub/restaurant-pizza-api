class RestaurantsController < ApplicationController
    wrap_parameters format: []
# rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        restaurants = Restaurant.all 
        render json: restaurants.as_json(only: [:id, :name, :address])
    end

    def show
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant.nil?
          render json: { error: "Restaurant not found" }, status: :not_found
        else
          render json: restaurant.as_json(include: { pizzas: { only: [:id, :name, :ingredients] } }, only: [:id, :name, :address])
        end
    end

    def destroy
        restaurant = Restaurant.find_by(id: params[:id])
    
        if restaurant
          restaurant.restaurant_pizzas.destroy_all
          restaurant.destroy
          head :no_content
        else
          render json: { error: "Restaurant not found" }, status: :not_found
        end
      end
    # delete /restaurants/:id

    # private

    # def find_restaurant
    #     Restaurant.find_by(id: params[:id])
    # end

    # def render_not_found_response
    #     render json: { error: "Restaurant not found"}, status: :not_found
    # end
end
