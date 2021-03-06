class JobsController < ApplicationController

  def index
    @jobs = Job.all.order(created_at: :desc)
  
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @employer = Employer.find(params[:employer_id])
    @job = Job.new
  end

  def create
    @employer = Employer.find(params[:employer_id])
    @job = Job.new(job_params)
    if @job.save
      redirect_to(edit_employer_path(@employer))
      flash[:notice] = "Job Created Successfully"
    else
      render 'new'
    end
  end

  def edit
    @employer = Employer.find(params[:employer_id])
    @job = Job.find(params[:id])
  end

  def update
    @employer = Employer.find(params[:employer_id])
    @job = Job.find(params[:id])
    if @job.update_attributes(job_params)
      redirect_to(employer_path(@employer))
      flash[:notice] = "Job listing #{@job.position} updated successfully"
    else
      render 'edit'
    end
  end

  def delete
    @employer = Employer.find(params[:employer_id])
    @job = Job.find(params[:id])
  end

  def destroy
    @employer = Employer.find(params[:employer_id])
    @job = Job.find(params[:id])
    @job.user_applications.destroy_all
    @job.destroy
    redirect_to(edit_employer_path(@job.employer_id))
    flash[:notice] = "Job listing #{@job.position} deleted successfully"
  end

  private

  def job_params
    params.require(:job).permit(
    :employer_id,
    :position,
    :salary,
    :description,
    :hours,
    :morning,
    :afternoon,
    :evening,
    :night
  )
  end
end
