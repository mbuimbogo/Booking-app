class ReviewsController < ApplicationController
    wrap_parameters format: []
    def index
        reviews = Review.all
        render json: reviews
    end
    
    def show
        reviews = Review.find(params[:id])
        if reviews
        render json:reviews
        else
            render_not_found_response
        end
    end
  
    def create
        reviewed = Review.create(review_params)
        if reviewed.valid?
        render json: reviewed, status: :created
        else
            render json: { error: reviewed.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        review = Review.find_by(id: params[:id])
        if review
          review.destroy
          head :no_content
        else
          render_not_found_response
        end
      end

    private
    def review_params
        params.permit(:body, :user_id, :restaurant_id)
    end

    def render_not_found_response
        render json: { error: "Review not found" }, status: :not_found
      end

end
