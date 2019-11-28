class OrdersController < ApplicationController
    before_action :authenticate_user!, only: [:update]

    def update
        
        if (params[:method] == "add")
         @order = Order.find(params[:id])
        @food = Food.find(params[:food])
        if @order.foods.first.nil?
            @order.foods << @food
        else
        if @order.foods.include?(@food)
           @add_food=@order.foods.find(@food.id)
          @add_food.quantity+=1
          @add_food.save
        else
        @order.foods << @food
        end
    end
        redirect_to restaurant_foods_path(@food.restaurant_id, id: @order.reservation_id, order_id: @order.id)
        else
            @order = Order.find(params[:id])
            @food = Food.find(params[:food])
            if @order.foods.find(@food.id).quantity <= 1
                @order.foods.delete(@order.foods.find(@food.id))
              else
                 @remove_food=@order.foods.find(@food.id)
                 @remove_food.quantity-=1
                 @remove_food.save
              end
           redirect_to reservation_path(@order.reservation_id)
        end
        

    end
    
end
