class UserHistoryOfEmploymentsController < ApplicationController
  def edit
    @user = User.find(params[:user_id])
    @employment = UserHistoryOfEmployment.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    if @user.update_attributes(employment_params)
      redirect_to(edit_user_path(params[:id]))
      flash[:notice] = "User Updated Successfully"
    else
      render 'new'
    end
  end

  def new
    @user = User.find(params[:user_id])
    @employment = UserHistoryOfEmployment.new
  end

  def create
    @user = User.find(params[:user_id])
    @employment = UserHistoryOfEmployment.new(employment_params)
    if @employment.save!
      redirect_to(edit_user_path(@user))
      flash[:notice] = "User Updated Successfully"
    else
      render 'new'
    end
  end

  def delete
  end

  def destroy
  end

  private
  def employment_params
    params.require(:user_history_of_employment).permit(
    :user_id,
    :start_date,
    :end_date,
    :employer,
    :current_employer,
    :job_title,
    :contact_number,
    :job_description)
  end
end
