class EmployersController < ApplicationController
  before_action :confirm_logged_in_employer, :except => [:new, :create]
  def index
    @employers = Employer.all.order(:company_name)
  end

  def show
    @employer = Employer.find(params[:id])
    @jobs = @employer.jobs.all.order(created_at: :desc)
    # There has to be a better way to state the code below
    if @employer.hq_building?
      @building = "Bldg #{@employer.hq_building}"
    end
    if @employer.hq_suite?
      @suite = "Suite #{@employer.hq_suite}"
    end
    if @employer.hq_apartment?
      @apt = "Apt. #{@employer.hq_apartment}"
    end
    @number = "#{@building} #{@suite} #{@apt}"
    # There has to be a better way to do these...
    if @employer.local_building?
      @local_building = "Bldg #{@employer.local_building}"
    end
    if @employer.local_suite?
      @local_suite = "Suite #{@employer.local_suite}"
    end
    if @employer.local_apartment?
      @local_apt = "Apt. #{@employer.local_apartment}"
    end
    @local_number = "#{@local_building} #{@local_suite} #{@local_apt}"
  end

  def new
    @employer = Employer.new
  end

  def create
    @employer = Employer.new(employer_params)
    if @employer.save
      session[:employer_id] = @employer.id
      redirect_to(employer_path(@employer))
      flash[:notice] = "Employer profile created successfully"
    else
      render 'new'
    end
  end

  def edit
    @employer = Employer.find(params[:id])
  end

  def update
    @employer = Employer.find(params[:id])
    if @employer.update_attributes(employer_params)
      redirect_to(employer_path(@employer))
      flash[:notice] = "Employer profile updated successfully"
    else
      render 'edit'
    end
  end

  def delete
    @employer = Employer.find(params[:id])
    @jobs = @employer.jobs.all
  end

  def destroy
    @employer = Employer.find(params[:id])
    @jobs = @employer.jobs.all
    @jobs.each do |app|
      app.user_applications.destroy
    end
    @jobs.destroy_all
    @employer.destroy
    redirect_to(employers_path)
    flash[:notice] = "Employer profile deleted successfully"
  end

  private
  def employer_params
    params.require(:employer).permit(
      :company_name,
      :about,
      :industry,
      :founded,
      :size,
      :local_address,
      :local_suite,
      :local_apartment,
      :local_building,
      :local_city,
      :local_state,
      :local_country,
      :hq_address,
      :hq_suite,
      :hq_apartment,
      :hq_building,
      :hq_city,
      :hq_state,
      :hq_country,
      :contact_email,
      :contact_phone,
      :website,
      :facebook,
      :twitter,
      :google,
      :instagram,
      :youtube,
      :linkedin,
      :pinterest,
      :tumblr,
      :flickr,
      :reddit,
      :snapchat,
      :password,
      :username
    )
  end
end
