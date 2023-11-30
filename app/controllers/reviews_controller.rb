class ReviewsController < ApplicationController
  before_action :set_user
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def create
    if @user == 'learn'
      @review = @user.reviews.create(review_params)
    end

    redirect_to user_path(@user)
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
