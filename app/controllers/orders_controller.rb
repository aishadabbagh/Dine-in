class OrdersController < ApplicationController
    def index
        @oreders = current_user.oreders.all
    end
    
    def show
        @oreder = current_user.oreders.find(params[:id])
    end
    
    def new
        @oreder = Oreder.new
        @restaurant_id = params
    end

    def create
        params[:oreder][:user_id]= current_user.id
        # params[:oreder][:restaurant_id]= 2
        

        @oreder = Oreder.new(oreder_params)
        @oreder.save
        redirect_to @oreder
    end
    
    def edit
        @oreder = Oreder.find(params[:id])
    end

    def update
        @oreder = Oreder.find(params[:id])
        @oreder.update(oreder_params)
        redirect_to @oreder
    end
    
    def destroy
        Oreder.find(params[:id]).destroy
        redirect_to oreders_path
    end
    
    private
    def oreder_params
        params.require(:oreder).permit(:time,:date, :user_id, :restaurant_id)
    end
end
