class WaterFrequenciesController < ApplicationController
  before_action :set_water_frequency, only: [:show, :edit, :update, :destroy]

  # GET /water_frequencies
  # GET /water_frequencies.json
  def index
    @water_frequencies = WaterFrequency.all
  end

  # GET /water_frequencies/1
  # GET /water_frequencies/1.json
  def show
  end

  # GET /water_frequencies/new
  def new
    @water_frequency = WaterFrequency.new
  end

  # GET /water_frequencies/1/edit
  def edit
  end

  # POST /water_frequencies
  # POST /water_frequencies.json
  def create
    @water_frequency = WaterFrequency.new(water_frequency_params)

    respond_to do |format|
      if @water_frequency.save
        format.html { redirect_to root_url, notice: 'Water frequency was successfully created.' }
        format.json { render :show, status: :created, location: @water_frequency }
      else
        format.html { render :new }
        format.json { render json: @water_frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_frequencies/1
  # PATCH/PUT /water_frequencies/1.json
  def update
    respond_to do |format|
      if @water_frequency.update(water_frequency_params)
        format.html { redirect_to @water_frequency, notice: 'Water frequency was successfully updated.' }
        format.json { render :show, status: :ok, location: @water_frequency }
      else
        format.html { render :edit }
        format.json { render json: @water_frequency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_frequencies/1
  # DELETE /water_frequencies/1.json
  def destroy
    @water_frequency.destroy
    respond_to do |format|
      format.html { redirect_to water_frequencies_url, notice: 'Water frequency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_frequency
      @water_frequency = WaterFrequency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_frequency_params
      params.require(:water_frequency).permit(:value, :frequency, :observation, :plant_type_id, :climate_zone_id)
    end
end
