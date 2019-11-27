class ReservationsController < ApplicationController
    before_action :authenticate_user!, only: [:index , :show, :new, :create, :edit, :update, :destroy]
    # Show all reservation done by a guest (Seen by Restuarant manager and guest)
    def index
        @reservations = current_user.reservations.all
    end
    
    def show
        @reservation = current_user.reservations.find(params[:id])
    end
    # Add reservation (Done by guest)
    def new
        @restaurant_id = params[:id]
        @reservation = Reservation.new
    end

    def create
        params[:reservation][:user_id]= current_user.id        

        @reservation = Reservation.new(reservation_params)
        @reservation.save
        @res = @reservation.restaurant_id
        redirect_to restaurant_path(@res)
    end
    # Edit reservation (Done by guest)
    def edit
        @reservation = Reservation.find(params[:id])

    end

    def update
        @restaurant = current_user.reservations.find(params[:id])
        @restaurant.update(reservation_params_up)
        # @res = @restaurant.restaurant_id
        redirect_to reservations_path

    end
    #  Deleting reservation (Done by guest)
    def destroy
        Reservation.find(params[:id]).destroy
        redirect_to reservations_path
    end
    
    private
    def reservation_params
        params.require(:reservation).permit(:time,:date, :user_id, :restaurant_id)
    end
    def reservation_params_up
        params.require(:reservation).permit(:time,:date)
    end
end
