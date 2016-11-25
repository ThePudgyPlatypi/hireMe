class JobController < ApplicationController
  layout 'adminPanel'

  def index
    @jobs = Job.all.order(:desc)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def job_params
  end
end
