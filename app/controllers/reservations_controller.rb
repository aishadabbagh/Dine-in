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
         params[:order] = {
                    reservation_id: @reservation.id
                }
        @order = Order.new(order_params)
        @order.save
        @res = @reservation.restaurant_id
        redirect_to restaurant_foods_path(@res, id: @reservation.id, order_id: @order.id)
    end
    
    def edit
        @reservation = Reservation.find(params[:id])

    end

    def update
        @restaurant = current_user.reservations.find(params[:id])
        @restaurant.update(reservation_params_up)
        # @res = @restaurant.restaurant_id
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
    def order_params
        params.require(:order).permit(:reservation_id)
        
    end
end
