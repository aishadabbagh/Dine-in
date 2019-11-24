class ReservationsController < ApplicationController
    def index
        @reservations = Reservation.all
    end
    def show
        @reservation = Reservation.find(params[:id])
    end
    
    def new
        @reservation = Reservation.new
    end

    def create
        @reservation = Reservation.new(reservation_params)
        @reservation.save
        redirect_to reservation_path
    end
    
    def edit
        @reservation = Reservation.find(params[:id])
    end

    def update
        @reservation = Reservation.find(:reservation_id)
        @reservation.update(reservation_params)
        redirect_to reservation_path
    end
    
    def destroy
        Reservation.find(params[:id]).destroy
        redirect_to reservation_path
    end
    
    private
    def reservation_params
        params.require(:reservation).permit(:time)
    end
end
