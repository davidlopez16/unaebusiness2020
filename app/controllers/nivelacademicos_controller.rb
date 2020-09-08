class NivelacademicosController < ApplicationController
  before_action :set_nivelacademico, only: [:show, :edit, :update, :destroy]

  # GET /nivelacademicos
  # GET /nivelacademicos.json
  def index
    @nivelacademicos = Nivelacademico.all
  end

  # GET /nivelacademicos/1
  # GET /nivelacademicos/1.json
  def show
  end

  # GET /nivelacademicos/new
  def new
    @nivelacademico = Nivelacademico.new
  end

  # GET /nivelacademicos/1/edit
  def edit
  end

  # POST /nivelacademicos
  # POST /nivelacademicos.json
  def create
    @nivelacademico = Nivelacademico.new(nivelacademico_params)

    respond_to do |format|
      if @nivelacademico.save
        format.html { redirect_to @nivelacademico, notice: 'Nivelacademico was successfully created.' }
        format.json { render :show, status: :created, location: @nivelacademico }
      else
        format.html { render :new }
        format.json { render json: @nivelacademico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nivelacademicos/1
  # PATCH/PUT /nivelacademicos/1.json
  def update
    respond_to do |format|
      if @nivelacademico.update(nivelacademico_params)
        format.html { redirect_to @nivelacademico, notice: 'Nivelacademico was successfully updated.' }
        format.json { render :show, status: :ok, location: @nivelacademico }
      else
        format.html { render :edit }
        format.json { render json: @nivelacademico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nivelacademicos/1
  # DELETE /nivelacademicos/1.json
  def destroy
    @nivelacademico.destroy
    respond_to do |format|
      format.html { redirect_to nivelacademicos_url, notice: 'Nivelacademico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nivelacademico
      @nivelacademico = Nivelacademico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nivelacademico_params
      params.require(:nivelacademico).permit(:descripcion)
    end
end
