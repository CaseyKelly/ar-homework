class ReviewsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

    def index
      @reviews = Review.all
    end

    def new
      @review = Review.new
    end

    def create
      @review = Review.new(review_params)
      @review.product_id = params[:product_id]
      if @review.save
      redirect_to companies_path
        else
          render @review
      end
    end

    def show
      @review = Review.find(params[:id])
    end

    private
    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
       params.require(:review).permit(:title, :description, :rating, :product_id)
    end
end
