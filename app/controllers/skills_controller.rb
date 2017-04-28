class SkillsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @skill = Skill.new
  end

  def create
    @user = User.find(params[:user_id])
    @skill = Skill.new(skill_params)
    if @skill.save!
      redirect_to(edit_user_path(@user))
      flash[:notice] = "Skill Added Successfully"
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @skill = Skill.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @skill = Skill.find(params[:id])
    if @skill.update_attributes(skill_params)
      redirect_to(edit_user_path(@user))
      flash[:notice] = "Skill Updated Successfully"
    else
      render 'edit'
    end
  end

  def delete
    @user = User.find(params[:user_id])
    @skill = Skill.find(params[:id])
  end

  def destroy
    @user = User.find(params[:user_id])
    @skill = Skill.find(params[:id])
    @skill.destroy
    flash[:notice] = "Skill Deleted Successfully"
    redirect_to(edit_user_path(@user))
  end

  private
  def skill_params
    params.require(:skill).permit(
    :user_id,
    :skill,
    :advanced,
    :experienced,
    :beginner,
    :description
  )
  end
end
