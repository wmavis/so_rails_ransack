class ImagecapturingsController < ApplicationController
  before_action :set_imagecapturing, only: [:show, :edit, :update, :destroy]

  # GET /imagecapturings
  # GET /imagecapturings.json
  def index
    @q = params[:q]
    @search = Imagecapturing.ransack params[:q]
    @imagecapturings = @search.result #.result.page params[:page]
  end

  # GET /imagecapturings/1
  # GET /imagecapturings/1.json
  def show
  end

  # GET /imagecapturings/new
  def new
    @imagecapturing = Imagecapturing.new
  end

  # GET /imagecapturings/1/edit
  def edit
  end

  # POST /imagecapturings
  # POST /imagecapturings.json
  def create
    @imagecapturing = Imagecapturing.new(imagecapturing_params)

    respond_to do |format|
      if @imagecapturing.save
        format.html { redirect_to @imagecapturing, notice: 'Imagecapturing was successfully created.' }
        format.json { render :show, status: :created, location: @imagecapturing }
      else
        format.html { render :new }
        format.json { render json: @imagecapturing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imagecapturings/1
  # PATCH/PUT /imagecapturings/1.json
  def update
    respond_to do |format|
      if @imagecapturing.update(imagecapturing_params)
        format.html { redirect_to @imagecapturing, notice: 'Imagecapturing was successfully updated.' }
        format.json { render :show, status: :ok, location: @imagecapturing }
      else
        format.html { render :edit }
        format.json { render json: @imagecapturing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagecapturings/1
  # DELETE /imagecapturings/1.json
  def destroy
    @imagecapturing.destroy
    respond_to do |format|
      format.html { redirect_to imagecapturings_url, notice: 'Imagecapturing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagecapturing
      @imagecapturing = Imagecapturing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imagecapturing_params
      params.require(:imagecapturing).permit(:name, :finish_date)
    end
end
