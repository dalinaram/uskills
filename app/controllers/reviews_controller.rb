class ReviewsController < ApplicationController
  before_action :set_user
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def create
      @review = Review.new(review_params)
      @review.user = @user
      if @review.save
        redirect_to user_path(@user)
      end
  end

  

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
