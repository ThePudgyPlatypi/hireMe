class UserHistoryOfEducationsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @education = UserHistoryOfEducation.new
  end

  def create
    @user = User.find(params[:user_id])
    @education = UserHistoryOfEducation.new(education_params)
    if @education.save!
      redirect_to(edit_user_path(@user))
      flash[:notice] = "Education Added Successfully"
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @education = UserHistoryOfEducation.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @education = UserHistoryOfEducation.find(params[:id])
    if @user.update_attributes(education_params)
      redirect_to(edit_user_path(params[:id]))
      flash[:notice] = "User Updated Successfully"
    else
      render 'new'
    end
  end

  def delete
    @user = User.find(params[:user_id])
    @education = UserHistoryOfEducation.find(params[:id])
  end

  def destroy
    
  end

  private

  def education_params
    params.require(:user_history_of_education).permit(
      :user_id,
      :school,
      :major,
      :gpa,
      :current_term,
      :current_term,
      :currently_attending
      )
  end
end
