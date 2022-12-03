class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        users = User.all
        render json: users , only:[:id, :name, :user_name]
    end

    def show
        user = User.find(params[:id])
        render json: user, only:[:id, :name,:user_name], include: :reviews
    end
    
    private
    def render_not_found_response
        render json: { error: "User not found" }, status: :not_found
    end

end
