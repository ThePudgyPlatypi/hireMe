class UserHistoryOfEducationsController < ApplicationController
  def new
    # @user = User.find(params[:user_id])
    # @education = UserHistoryOfEducationsController.new
  end

  def create
    # @user = User.find(params[:user_id])
    # @education = UserHistoryOfEducationsController.new(education_params)
    # if @education.save
    #   flash[:notice] = "Education Added. Add more if needed."
    # else
    #   render 'new'
    # end
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

  def show
  end

  private

  def education_params
    params.require(:user).permit(:school, :major, :gpa, :current_term, :current_term, :currently_attending)
  end
end
