class BeachesController < ApplicationController
    def index
    @beaches = Beach.all 
    render json: @beaches
    end

    def show
    @beach = Beach.find(params[:id])
    render json: @beach
    end

    def create
    @beach = Beach.create(beach_params)
    render json: @beach
    end

    private
    def beach_params
    params.permit(:name,:img,:lat,:lng)
    end

end
