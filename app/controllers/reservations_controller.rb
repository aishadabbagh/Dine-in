class ReservationsController < ApplicationController
    def index
        @reservations = current_user.reservations.all
    end
    
    def show
        @reservation = current_user.reservations.find(params[:id])
    end
    
    def new
        @reservation = Reservation.new
        @restaurant_id = params
    end

    def create
        params[:reservation][:user_id]= current_user.id
        # params[:reservation][:restaurant_id]= 2
        

        @reservation = Reservation.new(reservation_params)
        @reservation.save
        redirect_to @reservation
    end
    
    def edit
        @reservation = Reservation.find(params[:id])
    end

    def update
        @reservation = Reservation.find(params[:id])
        @reservation.update(reservation_params)
        redirect_to @reservation
    end
    
    def destroy
        Reservation.find(params[:id]).destroy
        redirect_to reservations_path
    end
    
    private
    def reservation_params
        params.require(:reservation).permit(:time,:date, :user_id, :restaurant_id)
    end
end
