class OrdersController < ApplicationController
    before_action :authenticate_user!, only: [:update]

    def update
        
        if (params[:method] == "add")
         @order = Order.find(params[:id])
        @food = Food.find(params[:food])
        @order.foods << @food
        redirect_to restaurant_foods_path(@food.restaurant_id, id: @order.reservation_id, order_id: @order.id)
        else
            @order = Order.find(params[:id])
            @food = Food.find(params[:food])
            @order.foods.find(@food.id).destroy
           redirect_to reservation_path(@order.reservation_id)
        end
        

    end
    
end
