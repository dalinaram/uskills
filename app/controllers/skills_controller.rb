class SkillsController < ApplicationController
  def show
    @skill = Skill.find(params[:id])
    # @users = User.all
    #   @skill = @user.skill
 end

end
