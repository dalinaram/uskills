class SkillsController < ApplicationController
  #  skip_before_action :authenticate_formation!, only: :index
 before_action :set_formation, only: [:show, :edit, :update, :destroy]
  # before_action :authentification
  def index
   @formations = Formation.all
  end

  def new
    @formation = Formation.new
  end

  def create
   @formation = Formation.new(formation_params)
   if @formation.save
     redirect_to formation_path(@formation), notice: 'Formation was successfully created.'
   else
     render :new, status: :unprocessable_entity
   end
 end

  def show
   #raise
  end

  def edit

  end

  def  update
   if @formation.update(formation_params)
     redirect_to formation_path(@formation), notice: 'formation was successfully updated.'
   else
     render :edit, status: :unprocessable_entity
   end
  end

  def destroy
    @formation.destroy
    redirect_to formations_path
  end


  private



  def formation_params
   params.require(:formation).permit(:name, :description)
 end

  def set_formation
   @formation = Formation.find(params[:id])
 end
 end
