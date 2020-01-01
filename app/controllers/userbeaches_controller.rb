class UserbeachesController < ApplicationController
        def index
        @userbeaches = Userbeach.all 
        render json: @userbeaches, include:"**"
        end
    
        def show
        @userbeach = Userbeach.find(params[:id])
        render json: @userbeach
        end
    
        def create
        @userbeach = Userbeach.create(userbeach_params)
        render json: @userbeach
        end
    
        def update
        @userbeach = Userbeach.find(params[:id])
        @userbeach.update(userbeach_params)
        render json: @userbeach
        end
    
        def destroy
        @userbeach = Userbeach.find(params[:id])
        @userbeach.destroy
        end
    
        private
        def userbeach_params
        params.permit(:name, :user_id, :favbeach_id)
        end
        
end
