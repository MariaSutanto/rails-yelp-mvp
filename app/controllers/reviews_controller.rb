class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
