class ReviewsController < ApplicationController
  before_action :set_user
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def create
      @review = Review.new(review_params)
      @review.teacher_id = @user.id
      @review.student_id = current_user.id
      if Reservation.select {|resa| resa.student == current_user && resa.teacher == @user && resa.end_date <= Date.today}.count >= 1
        if @review.save
          redirect_to user_path(@user)
        end
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
