class RentersController < ApplicationController
  before_action :admin_only
  before_action :set_renter, only: [:show, :edit, :update, :destroy]

  # GET /renters
  # GET /renters.json
  def index
    @renters = Renter.all
  end

  # GET /renters/1
  # GET /renters/1.json
  def show
  end

  # GET /renters/new
  def new
    @renter = Renter.new
    populate_contact_info
  end

  # GET /renters/1/edit
  def edit
  end

  # POST /renters
  # POST /renters.json
  def create
    @renter = Renter.new(renter_params)

    respond_to do |format|
      if @renter.save
        format.html { redirect_to @renter, notice: 'Renter was successfully created.' }
        format.json { render :show, status: :created, location: @renter }
      else
        format.html { render :new }
        format.json { render json: @renter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /renters/1
  # PATCH/PUT /renters/1.json
  def update
    respond_to do |format|
      if @renter.update(renter_params)
        format.html { redirect_to @renter, notice: 'Renter was successfully updated.' }
        format.json { render :show, status: :ok, location: @renter }
      else
        format.html { render :edit }
        format.json { render json: @renter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /renters/1
  # DELETE /renters/1.json
  def destroy
    @renter.destroy
    respond_to do |format|
      format.html { redirect_to renters_url, notice: 'Renter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_renter
      @renter = Renter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def renter_params
      params.require(:renter).permit(:type, :first_name, :last_name, :dob, :ssn, :property_id, :unit, :rent,
        addresses_attributes: [:id, :primary, :company_id, :address_1, :address_2, :city, :state, :zip, :country, :category, :_destroy],
        phones_attributes: [:id, :primary, :company_id, :area_code, :phone_number, :category, :_destroy],
        emails_attributes: [:id, :primary, :company_id, :email, :category, :_destroy]
      )
    end

    def populate_contact_info
      @renter.addresses << Address.new if @renter.addresses.empty?
      @renter.emails << Email.new if @renter.emails.empty?
      @renter.phones << Phone.new if @renter.phones.empty?
    end
end
