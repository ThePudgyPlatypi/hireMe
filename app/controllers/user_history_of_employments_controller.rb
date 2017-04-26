class UserHistoryOfEmploymentsController < ApplicationController
  def edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(employment_params)
      redirect_to(edit_user_path(params[:id]))
      flash[:notice] = "User Updated Successfully"
    else
      render 'new'
    end
  end

  private
  def employment_params
    params.require(:user).permit(
    :start_date,
    :end_date,
    :employer,
    :current_employer,
    :job_title,
    :contact_number,
    :job_description)
  end
end
