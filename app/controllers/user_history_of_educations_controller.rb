class UserHistoryOfEducationsController < ApplicationController
  def edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(education_params)
      redirect_to(edit_user_path(params[:id]))
      flash[:notice] = "User Updated Successfully"
    else
      render 'new'
    end
  end

  def delete
  end

  private

  def education_params
    params.require(:user).permit(:school, :major, :gpa, :current_term, :current_term, :currently_attending)
  end
end
