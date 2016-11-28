class JobsController < ApplicationController
  layout 'adminPanel'

  def index
    @jobs = Job.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @employer = Employer.find(params[:employer_id])
    @job = Job.new
  end

  def create
    @employer = Employer.find(params[:employer_id])
    @job = @employer.jobs.new(job_params)
    if @job.save
      redirect_to(employer_path(@employer))
    else
      render 'new'
    end
  end

  def edit
  end

  def delete
  end

  def destroy
  end

  private

  def job_params
    params.require(:job).permit(
    :employer_id,
    :position,
    :salary,
    :description,
    :hours
  )

  end
end
