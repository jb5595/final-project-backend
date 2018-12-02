class ReviewsController < ApplicationController

  skip_before_action :authorized, only: [:index]

  def create
    @review = Review.create(review_params)
    render json: @review, status: 200
  end

  def index
    if params[:expert_id]
      @expert = Expert.find(params[:expert_id])
      @reviews = @expert.reviews
      render json: @reviews, status: 200
    end
  end
  private

  def review_params
    params.require(:review).permit(:expert_id, :user_id, :title, :details, :score)
  end
end
