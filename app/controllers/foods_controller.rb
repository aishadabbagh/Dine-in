class FoodsController < ApplicationController
    def index 
        @restaurant = Restaurant.find(params[:restaurant_id])
        @foods = @restaurant.foods.all
    end
    def show 
        @restaurant = Restaurant.find(params[:restaurant_id])
        @food = @restaurant.foods.find(params[:id])
    end

    def new
        @restaurant = Restaurant.find(params[:restaurant_id])
        @food = Food.new
    end

    def create
        @food = Food.new(food_params)
        @food.save
        redirect_to restaurant_path(@food.restaurant_id)
    end
    
    def edit
        @restaurant = Restaurant.find(params[:restaurant_id])
        @food = Food.find(params[:id])
    end

    def update
        @restaurant = Restaurant.find(params[:restaurant_id])
        @food = @restaurant.foods.find(params[:id])
        @food.update(food_params)
        redirect_to restaurant_path(@restaurant)

    end
    
    def destroy
        @restaurant = Restaurant.find(params[:restaurant_id])
        @food = @restaurant.foods.find(params[:id])
        @food.destroy
        # Food.find(params[:id]).destroy
        redirect_to restaurant_path(@restaurant)
    end
    private
    def food_params
        params.require(:food).permit(:name,:price, :restaurant_id, :image)
    end
end
