class UsersController < ApplicationController

  #  skip_before_action :authenticate_user!, only: :index
 before_action :set_user, only: [:show, :edit, :update, :destroy]
  # before_action :authentification
  def index

   @users = User.all
   @markers = @users.geocoded.map do |user|
    {
      lat: user.latitude,
      lng: user.longitude
    }
  end

   @teachers = @users.where(role: "teach")

   @students = @users.where(role: "learn")
   # @users.select {|user| user.role == 'teach'}
   # raise

  end

  def new
    @user = User.new

  end
  def create
    @user = User.new(user_params)

    if @user.save
      if @user == 'learn' # Ajout de la condition ici pour vérifier si l'utilisateur est un étudiant
        @review = Review.new(user: @user, teacher: some_teacher_instance, content: params[:review][:content], rating: params[:review][:rating])
        @review.save
      elsif @user == 'teach' # Ajout de la condition ici pour vérifier si l'utilisateur est un enseignant
        @skill = Skill.new(user: @user, title: params[:skills])
      end

      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
   @review = Review.new
   @user = User.find(params[:id])
   @users = User.all
   @reservation = Reservation.new
   @reviews = Review.where(teacher_id: @user.id)
   @markers = @users.geocoded.map do |user|
      if user == @user
        {
          lat: user.latitude,
          lng: user.longitude
        }
      end
    end
  end


  def edit
  end

  def  update
   if @user.update(user_params)
     redirect_to user_path(@user), notice: 'User was successfully updated.'
   else
     render :edit, status: :unprocessable_entity
   end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end



  private


  def user_params
    params.require(:user).permit(:name, :last_name, :address, :email, :skills, :interest, :teacher, :rating, :photo)
  end

   def set_user
    @user = User.find(params[:id])
   end
 end
