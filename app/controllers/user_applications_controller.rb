class UserApplicationsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @job = Job.find(params[:job_id])
    @app = UserApplication.new
  end

  def create
  end

  def edit
  end


end
