class AppsController < ApplicationController
  layout 'adminPanel'

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def delete
  end

  def destroy
  end

  private

  def apps_params
    params.require(:apps).params.permit()
  end
end
