class WatchesController < ApplicationController

    def index
        watches = Watch.all
        render json: watches
    end 
    
    # def create
    #     watch = Watch.create(watch_params)
    #     render json: watch
    # end
    
    def show
        watch = Watch.find(params[:id])
        render json: watch
    end 
    
    # def update 
    #     watch = Watch.find(params[:id])
    #     watch.update(watch_params)
    #     render json: watch
    # end 
    
    # def destroy 
    #     watch = Watch.find(params[:id])
    #     watch.destroy
    # end

    private

    def watch_params
        params.permit(:name, :brand, :color, :image_url, :price)
    end
    
end
