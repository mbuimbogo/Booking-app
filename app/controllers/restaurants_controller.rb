class RestaurantsController < ApplicationController
  def index
    restaurants = Restaurant.all
    render json: restaurants
end

    def show
       restaurant =Restaurant.find_by(id: params[:id])
        if restaurant
          render json:restaurant
        else
          render_not_found_response
        end
    end
    
    def update
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant
          restaurant.update(restaurant_params)
          render json: restaurant
        else
            render_not_found_response
        end
      end

    def increment_likes
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant
          restaurant.update(likes: restaurant.likes + 1)
          render json: restaurant
        else
            render_not_found_response
        end
    end

    private
    def restaurant_params
        params.permit(:name, :city, :state, :likes)
    end
    private
    def render_not_found_response
        render json: { error: "Restaurant not found" }, status: :not_found
      end

end
