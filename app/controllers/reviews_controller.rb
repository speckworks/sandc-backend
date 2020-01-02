class ReviewsController < ApplicationController
    def index
    @reviews = Review.all 
    render json: @reviews, include: "**"
    end

    def show
    @review = Review.find(params[:id])
    render json: @review
    end

    def create
    @review = Review.create(review_params)
    render json: @review
    end

    def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    render json: @review
    end

    def destroy
    @review = Review.find(params[:id])
    @review.destroy
    end

    private
    def review_params
    params.permit(:review, :user_id, :beach_id, :beach)
    end

end
