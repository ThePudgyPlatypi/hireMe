class UserApplicationsController < ApplicationController
  layout 'adminPanel'
  before_action :confirm_logged_in
  def index
  end

  def show
  end

  def new
    @job = Job.find(params[:job_id])
    @app = UserApplication.new
  end

  def create
    @job = Job.find(params[:job_id])
    @app = UserApplication.new(app_params)
    if @app.save
      redirect_to(job_path(@job))
      flash[:notice] = "Congrats and Good luck! You applied successfully"
    else
      render 'new'
    end
  end

  def edit
  end

  private

  def app_params
    params.require(:user_application).permit(:name, :resume, :job_id, :user_id)
  end
end
