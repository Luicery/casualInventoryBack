class LocationsController < ApplicationController
  before_action :set_location, only: [ :show, :edit, :update, :destroy ]
  before_action :authenticate_company

  # GET /locations or /locations.json
  def index
    @locations = Location.all
  end

  # GET /locationprofile/1 or /locationprofile/1.json
  def show
    locationData = current_company.locations.where(id: params[:id]).first
    @location = {
      parentCompany: locationData.company,
      location: locationData,
      stock: locationData.items.sort_by {|h| h[:name]},
    }
    render json: @location
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations or /locations.json
  def create
    @location = Location.create(location_params)
    @location.company = current_company
    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: "Location was successfully created." }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1 or /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: "Location was successfully updated." }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1 or /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: "Location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def location_params
      params.require(:location).permit(:address, :phone, :manager, :company_id, :is_suppler)
    end
end
