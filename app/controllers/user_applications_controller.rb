  class UserApplicationsController < ApplicationController
  # Come back to this. I don't want to allow public access to job applications
  # Need to figure out how to have both the employer and user have access
  before_action :confirm_logged_in, :except => [:index, :show]


  def index
    @job = Job.find(params[:job_id])
    @apps = Job.find(params[:job_id]).user_applications.all.order(:created_at)
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
    params.require(:user_application).permit(:name, :resume, :job_id, :user_id, :cover, :email, :phone, :address, :city)
  end
end
