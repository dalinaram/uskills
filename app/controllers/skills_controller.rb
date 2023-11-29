class SkillsController < ApplicationController
  #  skip_before_action :authenticate_skill!, only: :index
 before_action :set_skill, only: [:show, :edit, :update, :destroy]
  # before_action :authentification
  def index
   @skills = Skill.all
  end

  def new
    @skill = skill.new
  end

  def create
   @skill = Skill.new(skill_params)
   if @skill.save
     redirect_to skill_path(@skill), notice: 'skill was successfully created.'
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
   if @skill.update(skill_params)
     redirect_to skill_path(@skill), notice: 'skill was successfully updated.'
   else
     render :edit, status: :unprocessable_entity
   end
  end

  def destroy
    @skill.destroy
    redirect_to skills_path
  end


  private



  def skill_params
   params.require(:skill).permit(:name, :description)
 end

  def set_skill
   @skill = Skill.find(params[:id])
 end
 end
