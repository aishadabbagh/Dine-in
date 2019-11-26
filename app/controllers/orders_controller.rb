class OrdersController < ApplicationController
    def index 
        @reservation = Reservation.find(params[:reservation_id])
        @orders = @reservation.orders.all
    end
    def show 
        @reservation = Reservation.find(params[:reservation_id])
        @order = @reservation.orders.find(params[:id])
    end

    def new
        @reservation = Reservation.find(params[:reservation_id])
        @order = Order.new
    end

    def create
        @order = Order.new(order_params)
        @order.save
        redirect_to reservation_path(@order.reservation_id)
    end
    
    def edit
        @reservation = Reservation.find(params[:reservation_id])
        @order = @reservation.orders.find(params[:id])
    end

    def update
        @reservation = Reservation.find(params[:reservation_id])
        @order = @reservation.orders.find(params[:id])
        @order.update(order_params)
        redirect_to reservation_path(@reservation)

    end
    
    def destroy
        @reservation = Reservation.find(params[:reservation_id])
        @order = @reservation.orders.find(params[:id])
        @order.destroy
        # Order.find(params[:id]).destroy
        redirect_to reservation_path(@reservation)
    end
    private
    def order_params
        params.require(:order).permit(:status)
    end
end
