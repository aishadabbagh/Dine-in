class FoodsController < ApplicationController
    def index 
        @foods = Foods.all
    end
end
