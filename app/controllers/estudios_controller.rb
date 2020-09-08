class EstudiosController < ApplicationController
  before_action :set_estudio, only: [:show, :edit, :update, :destroy]
  before_action :set_postulante
  before_action :authenticate_user!
  # GET /estudios
  # GET /estudios.json
  def index
    @estudios = Estudio.all
  end

  # GET /estudios/1
  # GET /estudios/1.json
  def show
  end

  # GET /estudios/new
  def new
    @estudio = Estudio.new
  end

  # GET /estudios/1/edit
  def edit
  end

  # POST /estudios
  # POST /estudios.json
  def create
    @estudio = current_user.estudios.new(estudio_params)
    @estudio.postulante = @postulante
    respond_to do |format|
      if @estudio.save
        format.html { redirect_to @estudio.postulante, notice: 'Se ha creado correctamente.' }
        format.json { render :show, status: :created, location: @estudio }
      else
        format.html { render :new }
        format.json { render json: @estudio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estudios/1
  # PATCH/PUT /estudios/1.json
  def update
    respond_to do |format|
      if @estudio.update(estudio_params)
        format.html { redirect_to @estudio.postulante, notice: 'Se ha actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @estudio }
      else
        format.html { render :edit }
        format.json { render json: @estudio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estudios/1
  # DELETE /estudios/1.json
  def destroy
    @estudio.destroy
    respond_to do |format|
      format.html { redirect_to @postulante, notice: 'Se ha eliminado correctamente.!' }
      format.json { head :no_content }
    end
  end

  private

      def set_postulante
        @postulante = Postulante.find(params[:postulante_id])
      end

    # Use callbacks to share common setup or constraints between actions.
    def set_estudio
      @estudio = Estudio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estudio_params
      params.require(:estudio).permit(:user_id, :postulante_id, :nivel, :titulo, :institucion, :situacion, :anho_graduacion)
    end
end
