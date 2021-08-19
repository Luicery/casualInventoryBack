class CompaniesController < ApplicationController
  before_action :set_company, only: [ :show, :edit, :update, :destroy ]
  before_action :authenticate_company, except: [:new, :create, :index, :show]
  # GET /companies or /companies.json
  def index
    @companies = Company.all
    render json: @companies
  end

  # GET /companyprofile/1 or /companyprofile/1.json
  def show
  end

  def companyProfile
    # companyData = current_company
    @company_obj = {
      company: current_company,
      companyLocation: current_company.locations
    }
    render json: @company_obj
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies or /companies.json
  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: "Company was successfully created." }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1 or /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: "Company was successfully updated." }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1 or /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: "Company was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def company_params
      params.require(:company).permit(:email, :password_digest, :address, :name, :phone,)
    end
end
