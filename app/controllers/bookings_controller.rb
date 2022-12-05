class BookingsController < ApplicationController
    def index
        bookings = Booking.all
        render json: bookings
    end

    def create
       booked = Booking.create(booking_params)
        if booked.valid?
        render json:booked, status: :created
        else
            render json: { error:booked.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private
    def booking_params
        params.permit(:user_id, :restaurant_id, :status)
    end
    

end
