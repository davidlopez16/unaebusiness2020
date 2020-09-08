class ExpLaboralsController < ApplicationController
  before_action :set_exp_laboral, only: [:show, :edit, :update, :destroy]
  before_action :set_postulante
  before_action :authenticate_user!


  # GET /experiencia_laborals
  # GET /experiencia_laborals.json
  def index
    @exp_laborals = ExpLaboral.all
  end

  # GET /experiencia_laborals/1
  # GET /experiencia_laborals/1.json
  def show
  end

  # GET /experiencia_laborals/new
  def new
    @exp_laboral = ExpLaboral.new
  end

  # GET /experiencia_laborals/1/edit
  def edit
  end

  # POST /experiencia_laborals
  # POST /experiencia_laborals.json
  def create
    @exp_laboral = current_user.exp_laborals.new(exp_laboral_params)
    @exp_laboral.postulante = @postulante
    respond_to do |format|
      if @exp_laboral.save
        format.html { redirect_to @exp_laboral.postulante, notice: 'Experiencia laboral was successfully created.' }
        format.json { render :show, status: :created, location: @exp_laboral }
      else
        format.html { render :new }
        format.json { render json: @exp_laboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /experiencia_laborals/1
  # PATCH/PUT /experiencia_laborals/1.json
  def update
    respond_to do |format|
      if @exp_laboral.update(exp_laboral_params)
        format.html { redirect_to @exp_laboral.postulante, notice: 'Experiencia laboral was successfully updated.' }
        format.json { render :show, status: :ok, location: @exp_laboral }
      else
        format.html { render :edit }
        format.json { render json: @exp_laboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experiencia_laborals/1
  # DELETE /experiencia_laborals/1.json
  def destroy
    @exp_laboral.destroy
    respond_to do |format|
      format.html { redirect_to @postulante, notice: 'Experiencia laboral was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_postulante
      @postulante = Postulante.find(params[:postulante_id])
    end
      
    # Use callbacks to share common setup or constraints between actions.
    def set_exp_laboral
      @exp_laboral = ExpLaboral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exp_laboral_params
      params.require(:exp_laboral).permit(:nombre_empresa, :rubro_empresa, :cargo, :fecha_entrada, :fecha_salida, :salario, :personal_a_cargo, :descripcion_tareas, :referencias, :user_id, :postulante_id )
    end
end
