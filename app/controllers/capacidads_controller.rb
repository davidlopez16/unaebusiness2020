class CapacidadsController < ApplicationController
  before_action :set_capacidad, only: [:show, :edit, :update, :destroy]

  # GET /capacidads
  # GET /capacidads.json
  def index
    @capacidads = Capacidad.all
  end

  # GET /capacidads/1
  # GET /capacidads/1.json
  def show
  end

  # GET /capacidads/new
  def new
    @capacidad = Capacidad.new
  end

  # GET /capacidads/1/edit
  def edit
  end

  # POST /capacidads
  # POST /capacidads.json
  def create
    @capacidad = Capacidad.new(capacidad_params)

    respond_to do |format|
      if @capacidad.save
        format.html { redirect_to @capacidad, notice: 'Capacidad was successfully created.' }
        format.json { render :show, status: :created, location: @capacidad }
      else
        format.html { render :new }
        format.json { render json: @capacidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capacidads/1
  # PATCH/PUT /capacidads/1.json
  def update
    respond_to do |format|
      if @capacidad.update(capacidad_params)
        format.html { redirect_to @capacidad, notice: 'Capacidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @capacidad }
      else
        format.html { render :edit }
        format.json { render json: @capacidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capacidads/1
  # DELETE /capacidads/1.json
  def destroy
    @capacidad.destroy
    respond_to do |format|
      format.html { redirect_to capacidads_url, notice: 'Capacidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capacidad
      @capacidad = Capacidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def capacidad_params
      params.require(:capacidad).permit(:tipo, :nivel)
    end
end
