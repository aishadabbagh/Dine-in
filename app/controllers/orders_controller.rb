class OrdersController < ApplicationController
    # Show all orders done by a guest (Seen by Restuarant manager, guest and admin)
    def index 
        @reservation = Reservation.find(params[:reservation_id])
        @orders = @reservation.orders.all
    end
    def show 
        @reservation = Reservation.find(params[:reservation_id])
        @order = @reservation.orders.find(params[:id])
    end
    # Add order (Done by guest and admin)
    def new
        @reservation = Reservation.find(params[:reservation_id])
        @order = Order.new
    end

    def create
        @order = Order.new(order_params)
        @order.save
        redirect_to reservation_path(@order.reservation_id)
    end
    # Edit an order (Done by guest and admin)
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
    #  Deleting orders (Done by guest and admin)
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
