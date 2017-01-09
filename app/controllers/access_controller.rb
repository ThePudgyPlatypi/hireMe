class AccessController < ApplicationController
  before_action :confirm_logged_in, :except => [:index, :signup_choice, :login, :attempt_login, :logout]
  before_action :confirm_logged_in_employer, :except => [:index, :signup_choice, :login, :attempt_login, :logout]

  def index
  end

  def login
    #login form
  end

  def attempt_login
    # Check to see if both fields in the login form have been filled out
    if params[:username].present? && params[:password].present?
      # Store the username in a variable for easier use
      found_user = params[:username]
      # Then I check whether the where comes back nil or not.
      # if it comes back false for being nil then it carries on
      # otherwise it checks against the next
      if !Employer.where(:username => found_user).first.nil?
        auth_employer_acct = Employer.where(:username => found_user).first.authenticate(params[:password])
      elsif !User.where(:username => found_user).first.nil?
        auth_user_acct = User.where(:username => found_user).first.authenticate(params[:password])
      end
    end

    if auth_user_acct
      session[:user_id] = auth_user_acct.id
      flash[:notice] = "You are now logged in as #{auth_user_acct.username}."
      redirect_to(user_path(auth_user_acct.id))
    elsif auth_employer_acct
      session[:employer_id] = auth_employer_acct.id
      flash[:notice] = "You are now logged in as #{auth_employer_acct.username}."
      redirect_to(employer_path(auth_employer_acct.id))
    else
      flash.now[:warning] = "Invalid username/password combination"
      render('login')
    end
  end

  def logout
    session[:user_id] = nil
    session[:employer_id] = nil
    flash[:notice] = "Successfully logged out"
    redirect_to(access_login_path)
  end

end
