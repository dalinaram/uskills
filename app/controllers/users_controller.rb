class UsersController < ApplicationController
 skip_before_action :authenticate_user!, only: :index
 before_action :set_user, only: [:show, :edit, :update, :destroy]
 # before_action :authentification
 def index
  @user = current_user
   @users = User.all
  @teachers = @users.where(role: "teach")
  raise
  # @learns = @users.where(role: "learn")
  # @users.select {|user| user.role == 'teach'}
  # raise
 end

 def new
   @user = User.new
 end

#  def create
#    @user = User.new(user_params)
#    if @user.save
#      redirect_to user_path(@user)
#    else
#      render :new, status: :unprocessable_entity
#    end
#  end

 def show
  @user = User.find(params[:id])
 end

 def edit
 end

 def  update
   if @user.update(user_params)
     redirect_to user_path(@user)
   else
     render :new, status: :unprocessable_entity
   end
 end

 def destroy
   @user.destroy
   redirect_to users_path
 end


 private


 def user_params
   params.require(:user).permit(:name, :last_name, :address, :email, :skills, :interest, :photo, :teacher, :rating)
 end
end
