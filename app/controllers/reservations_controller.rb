class ReservationsController < ApplicationController
    before_action :authenticate_user!, only: [:index , :show, :new, :create, :edit, :update, :destroy]

    def index
        @reservations = current_user.reservations.all
    end
    
    def show
        @reservation = current_user.reservations.find(params[:id])
    end
    
    def new
        @restaurant_id = params[:id]
        @reservation = Reservation.new
    end

    def create
        params[:reservation][:user_id]= current_user.id        

        @reservation = Reservation.new(reservation_params)
        @reservation.save
        redirect_to @reservation
    end
    
    def edit
        @reservation = Reservation.find(params[:id])

    end

    def update
       
       @restaurant = current_user.reservations.find(params[:id])
       @restaurant.update(reservation_params_up)
        redirect_to reservations_path

    end
    
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
