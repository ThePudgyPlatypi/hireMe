class UsersController < ApplicationController
  before_action :confirm_logged_in, :except => [:new, :create, :show]

  def index
    @users = User.all.order(:username)
  end

  def show
    @user = User.find(params[:id])
    @apps = User.find(params[:id]).user_applications
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to(user_path(@user))
      flash[:notice] = "User Created Successfully"
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
    @apps = User.find(params[:id]).user_applications
    @education = User.find(params[:id]).user_history_of_educations
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to(edit_user_path(@user), :notice => 'User profile updated successfully.') }
        format.json { respond_with_bip(@employer) }
      else
        format.html { render :action => "edit" }
        format.json { respond_with_bip(@user) }
      end
    end
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.user_applications.destroy_all
    @user.destroy
    flash[:notice] = "User '#{@user.username}' Deleted Successfully"
    redirect_to(users_path)
  end

  private

  # def login(username, password)
  #   if username.present? && password.present?
  #     # Store the username in a variable for easier use
  #     auth_user = User.where(:username => username).first.authenticate(password)
  #   end
  #
  #   if auth_user
  #     session[:user_id] = auth_user.id
  #   end
  # end

  def user_params
    params.require(:user).permit(
    :first_name,
    :last_name,
    :username,
    :password,
    :email,
    :about,
    :story,
    :school,
    :major,
    :current_term,
    :graduation_date,
    :admin,
    :avatar,
    :document,
    user_history_of_educations_attributes:[:school, :major, :gpa, :current_term, :graduation_date, :currently_attending, :_destroy])
  end
end
