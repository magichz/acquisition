class CentresController < ApplicationController
  before_action :set_centre, only: [:show, :edit, :update, :destroy]

  # GET /centres
  # GET /centres.json
  def index
    @centres = Centre.all
  end

  # GET /centres/1
  # GET /centres/1.json
  def show
  end

  # GET /centres/new
  def new
    @centre = Centre.new
  end

  # GET /centres/1/edit
  def edit
  end

  # POST /centres
  # POST /centres.json
  def create
    @centre = Centre.new(centre_params)

    respond_to do |format|
      if @centre.save
        format.html { redirect_to @centre, notice: 'Centre was successfully created.' }
        format.json { render action: 'show', status: :created, location: @centre }
      else
        format.html { render action: 'new' }
        format.json { render json: @centre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /centres/1
  # PATCH/PUT /centres/1.json
  def update
    respond_to do |format|
      if @centre.update(centre_params)
        format.html { redirect_to @centre, notice: 'Centre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @centre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /centres/1
  # DELETE /centres/1.json
  def destroy
    @centre.destroy
    respond_to do |format|
      format.html { redirect_to centres_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_centre
      @centre = Centre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def centre_params
      params.require(:centre).permit(:centre_id, :centre_name, :address_street, :address_suburb, :address_postcode, :Address_state, :operation_days, :external_rating, :internal_rating, :property_type, :practitioner_no, :admin_no, :nursing_no, :specialist_no, :rental_dietician, :rental_dentist, :rental_physio, :rental_hearing, :revenue_practice, :revenue_medicare, :revenue_thirdparty, :revenue_alliedhealth, :rental_pathology, :profit_beforetax, :offer_amount, :pathology_provider_Name, :radiology_provider_name, :doctor_id, :property_ownership, :contact_id, :accountant_id, :address_id, :software_name, :contact_title, :contact_name, :contact_position, :contact_email, :phone_number, :contact_type, :centre_id, :centre_id, :doctor_name, :hourly_rate, :service_year, :plan_year, :doctor_contract, :start_date, :end_date)
    end
end
