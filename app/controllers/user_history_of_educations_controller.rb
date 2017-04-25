class UserHistoryOfEducationsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @education = UserHistoryOfEducationsController.new
  end

  def create
    @user = User.find(params[:user_id])
    @education = UserHistoryOfEducationsController.new(education_params)
    if @education.save
      flash[:notice] = "Education Added. Add more if needed."
    else
      render 'new'
    end
  end

  def delete
  end

  def show

  end
end
