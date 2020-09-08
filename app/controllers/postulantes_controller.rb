class PostulantesController < ApplicationController
	#GET /postulantes
    def index
    	@postulantes = Postulante.all
    end

     #GET /postulantes/:id
    def show
    	@postulante = Postulante.find(params[:id])
      @estudio = Estudio.new
      @exp_laboral = ExpLaboral.new
    end
    #GET /postulantes/new
    def new
      @postulante = Postulante.new
    end

    def edit
      @postulante = Postulante.find(params[:id])
    end

    #POST /postulantes
    def create
      @postulante = Postulante.new(postulante_params)

      # @postulante = Postulante.new(cedula: params[:postulante][:cedula], nombres: params[:postulante][:nombres],
       # apellidos: params[:postulante][:apellidos], edad: params[:postulante][:edad], 
        #nacionalidad: params[:postulante][:nacionalidad], estado_civil: params[:postulante][:estado_civil],
        #telefono: params[:postulante][:telefono], direccion: params[:postulante][:direccion],)

      if @postulante.save
        redirect_to @postulante
      else
        render :new
      end
    end
    #DELETE /postulantes/:id
    def destroy
        @postulante = Postulante.find(params[:id])
        @postulante.destroy #Destroy elimina el objeto de la BD
        redirect_to postulantes_path
    end
    #POST /postulantes/:id 
    def update
      @postulante = Postulante.find(params[:id])
      if @postulante.update(postulante_params)
        redirect_to @postulante 
      else
        render :edit
      end      
    end

    private
    def postulante_params
        params.require(:postulante).permit(:cedula, :nombres, :edad,
         :nacionalidad, :estado_civil, :telefono, :direccion, :email, :fecha_nacimiento, :sexo, :mas_info, 
         :idioma)
    end

end
