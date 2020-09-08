class TitulosController < ApplicationController
  before_action :set_titulo, only: [:show, :edit, :update, :destroy]

  # GET /titulos
  # GET /titulos.json
  def index
    @titulos = Titulo.all
  end

  # GET /titulos/1
  # GET /titulos/1.json
  def show
  end

  # GET /titulos/new
  def new
    @titulo = Titulo.new
  end

  # GET /titulos/1/edit
  def edit
  end

  # POST /titulos
  # POST /titulos.json
  def create
    @titulo = Titulo.new(titulo_params)

    respond_to do |format|
      if @titulo.save
        format.html { redirect_to @titulo, notice: 'Titulo was successfully created.' }
        format.json { render :show, status: :created, location: @titulo }
      else
        format.html { render :new }
        format.json { render json: @titulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /titulos/1
  # PATCH/PUT /titulos/1.json
  def update
    respond_to do |format|
      if @titulo.update(titulo_params)
        format.html { redirect_to @titulo, notice: 'Titulo was successfully updated.' }
        format.json { render :show, status: :ok, location: @titulo }
      else
        format.html { render :edit }
        format.json { render json: @titulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titulos/1
  # DELETE /titulos/1.json
  def destroy
    @titulo.destroy
    respond_to do |format|
      format.html { redirect_to titulos_url, notice: 'Titulo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_titulo
      @titulo = Titulo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def titulo_params
      params.require(:titulo).permit(:descripcion)
    end
end
