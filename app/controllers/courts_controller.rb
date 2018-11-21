class CourtsController < ApplicationController
  before_action :set_court, only: [:show, :edit, :update, :destroy]
  before_action :set_page_title

  # GET /courts
  # GET /courts.json
  def index
    @courts = Court.all
  end

  # GET /courts/1
  # GET /courts/1.json
  def show
  end

  # GET /courts/new
  def new
    @court = Court.new
    populate_contact_info
  end

  # GET /courts/1/edit
  def edit
  end

  # POST /courts
  # POST /courts.json
  def create
    @court = Court.new(court_params)

    respond_to do |format|
      if @court.save
        format.html { redirect_to @court, notice: 'Court was successfully created.' }
        format.json { render :show, status: :created, location: @court }
      else
        format.html { render :new }
        format.json { render json: @court.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courts/1
  # PATCH/PUT /courts/1.json
  def update
    respond_to do |format|
      if @court.update(court_params)
        format.html { redirect_to @court, notice: 'Court was successfully updated.' }
        format.json { render :show, status: :ok, location: @court }
      else
        format.html { render :edit }
        format.json { render json: @court.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courts/1
  # DELETE /courts/1.json
  def destroy
    @court.destroy
    respond_to do |format|
      format.html { redirect_to courts_url, notice: 'Court was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_court
    @court = Court.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def court_params
    params.require(:court).permit(:type, :name,
      addresses_attributes: [:id, :primary, :company_id, :address_1, :address_2, :city, :state, :zip, :country, :category, :_destroy],
      phones_attributes: [:id, :primary, :company_id, :area_code, :phone_number, :category, :_destroy],
      emails_attributes: [:id, :primary, :company_id, :email, :category, :_destroy],
      websites_attributes: [:id, :primary, :company_id, :category, :url]
    )
  end

  def populate_contact_info
    @court.addresses << Address.new if @client.addresses.empty?
    @court.emails << Email.new if @client.emails.empty?
    @court.phones << Phone.new if @client.phones.empty?
    @court.websites << Website.new if @client.websites.empty?
  end
end
