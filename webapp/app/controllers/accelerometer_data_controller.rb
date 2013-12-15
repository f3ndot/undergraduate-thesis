class AccelerometerDataController < ApplicationController
  before_action :set_accelerometer_datum, only: [:show, :edit, :update, :destroy]

  # GET /accelerometer_data
  # GET /accelerometer_data.json
  def index
    @accelerometer_data = AccelerometerDatum.all
  end

  # GET /accelerometer_data/1
  # GET /accelerometer_data/1.json
  def show
  end

  # GET /accelerometer_data/new
  def new
    @accelerometer_datum = AccelerometerDatum.new
  end

  # GET /accelerometer_data/1/edit
  def edit
  end

  # POST /accelerometer_data
  # POST /accelerometer_data.json
  def create
    @accelerometer_datum = AccelerometerDatum.new(accelerometer_datum_params)

    respond_to do |format|
      if @accelerometer_datum.save
        format.html { redirect_to @accelerometer_datum, notice: 'Accelerometer datum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @accelerometer_datum }
      else
        format.html { render action: 'new' }
        format.json { render json: @accelerometer_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accelerometer_data/1
  # PATCH/PUT /accelerometer_data/1.json
  def update
    respond_to do |format|
      if @accelerometer_datum.update(accelerometer_datum_params)
        format.html { redirect_to @accelerometer_datum, notice: 'Accelerometer datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @accelerometer_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accelerometer_data/1
  # DELETE /accelerometer_data/1.json
  def destroy
    @accelerometer_datum.destroy
    respond_to do |format|
      format.html { redirect_to accelerometer_data_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accelerometer_datum
      @accelerometer_datum = AccelerometerDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accelerometer_datum_params
      params.require(:accelerometer_datum).permit(:log_entry_id, :x_max, :y_max, :z_max)
    end
end
