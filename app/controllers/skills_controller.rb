class SkillsController < ApplicationController

  #  skip_before_action :authenticate_skill!, only: :index
 before_action :set_skill, only: [:show, :edit, :update, :destroy]
  # before_action :authentification
  def index
    if params[:query].present?
      @skills = Skill.where(title: params[:query])
    else
      @skills = Skill.all
    end
  end

  def new
    @skill = Skill.new
  end

  def create
   @skill = Skill.new(skill_params)
   @skill.user = current_user
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

  def search
    @skills = if params[:query].present?
               perform_search(params[:query])
             else
               Skill.all
             end
    render :index
  end

  def perform_search(query)
    Skill.where("lower(title) ILIKE ?", "%#{query.downcase}%")
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
   params.require(:skill).permit(:title, :description)
 end

  def set_skill
   @skill = Skill.find(params[:id])
 end
 end
