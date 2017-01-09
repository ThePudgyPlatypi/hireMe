class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Logic for the navigation bar
  # This will be whether a login or logout is shown
  def nav_login_button
    
  end

  private

  def confirm_logged_in
    unless session[:user_id]
      flash[:warning] = "Please log in or Register as a User"
      redirect_to(access_login_path)
    end
  end

  def confirm_logged_in_employer
    unless session[:employer_id]
      flash[:warning] = "Please log in or Register as an Employer"
      redirect_to(access_login_path)
    end
  end

end
