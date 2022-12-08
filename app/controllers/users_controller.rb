class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
   

    def index
        
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

      def create 
        user = User.create(user_params)
        if user.valid?
            render json: user, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end
    
    def destroy
        user = User.find_by(id: params[:id])
        if user
          user.destroy
          head :no_content
        else
          render json: { error: "User not found" }, status: :not_found
        end
    end

    private
    def render_not_found_response
        render json: { error: "User not found" }, status: :not_found
    end

    def user_params
        params.permit(:user_name, :password, :password_confirmation)
      end

end
