class ContactInfomationsController < ApplicationController
  before_action :set_contact_infomation, only: [:show, :edit, :update, :destroy]

  # GET /contact_infomations
  # GET /contact_infomations.json
  def index
    @contact_infomations = ContactInfomation.all
  end

  # GET /contact_infomations/1
  # GET /contact_infomations/1.json
  def show
  end

  # GET /contact_infomations/new
  def new
    @contact_infomation = ContactInfomation.new
  end

  # GET /contact_infomations/1/edit
  def edit
  end

  # POST /contact_infomations
  # POST /contact_infomations.json
  def create
    @contact_infomation = ContactInfomation.new(contact_infomation_params)

    respond_to do |format|
      if @contact_infomation.save
        format.html { redirect_to @contact_infomation, notice: 'Contact infomation was successfully created.' }
        format.json { render :show, status: :created, location: @contact_infomation }
      else
        format.html { render :new }
        format.json { render json: @contact_infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_infomations/1
  # PATCH/PUT /contact_infomations/1.json
  def update
    respond_to do |format|
      if @contact_infomation.update(contact_infomation_params)
        format.html { redirect_to @contact_infomation, notice: 'Contact infomation was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_infomation }
      else
        format.html { render :edit }
        format.json { render json: @contact_infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_infomations/1
  # DELETE /contact_infomations/1.json
  def destroy
    @contact_infomation.destroy
    respond_to do |format|
      format.html { redirect_to contact_infomations_url, notice: 'Contact infomation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_infomation
      @contact_infomation = ContactInfomation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_infomation_params
      params.require(:contact_infomation).permit(:name, :email, :password, :phone_num, :address, :user_type)
    end
end
