class FavbeachesController < ApplicationController
    def index
    @favbeaches = Favbeach.all 
    render json: @favbeaches
    end

    def show
    @favbeach = Favbeach.find(params[:id])
    render json: @favbeach
    end

    def create
    @favbeach = Favbeach.create(favbeach_params)
    render json: @favbeach
    end

    private
    def favbeach_params
    params.permit(:name,:img,:lat,:lng)
    end

end
