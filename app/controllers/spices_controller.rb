class SpicesController < ApplicationController
    wrap_parameters format: []


    def index
        spices = Spice.all
        render json: spices
    end

    def create
        spice = Spice.create!(spice_params)
        render json: spice, status: :created
    end

        def show
            render json: Spice.find(params[:id])
        end

    
    def update
        spice = Spice.find(params[:id]).update(spice_params)
        render json: spice, status: :created
    end

    def destroy
        Spice.find(params[:id]).destroy
        head :no_content
    end           
    
    
    
    #private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

end
