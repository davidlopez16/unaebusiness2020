class EmpresasController < ApplicationController
	
	#Get / empresas
	def index
		#enviar datos a la vista 
		#@empresas es una variable de clase
		#all devuelve todos los registros
		@empresas = Empresa.all
	end
	#GET /empresas/:id
	def show
		#find encuentra un registro por su id
		@empresa = Empresa.find(params[:id])
	end
	#GET /empresas/new
	def new
		@empresa = Empresa.new
	end

	def edit
		@empresa = Empresa.find(params[:id])
	end

	#POST /empresas
	def create
		@empresa = Empresa.new(empresa_params)

	#	@empresa = Empresa.new(ruc: params[:empresa][:ruc], nombre: params[:empresa][:nombre],
	#		direccion: params[:empresa][:direccion], telefono: params[:empresa][:telefono], 
	#		email: params[:empresa][:email], fundador: params[:empresa][:fundador])
		if @empresa.save
			redirect_to @empresa
		else
			render :new
		end
	end

	#DELETE /empresas/:id
	def destroy
		@empresa = Empresa.find(params[:id])
		@empresa.destroy #Destroy elimina el objeto de la BD
		redirect_to empresas_path
	end
	#POST /empresas/:id 
    def update
      @empresa = Empresa.find(params[:id])
      if @empresa.update(empresa_params)
      	redirect_to @empresa 
      else
      	render :edit
      end
    end

    private 
    def empresa_params
    	params.require(:empresa).permit(:ruc, :nombre, :direccion, :telefono, :email, :fundador)
    end

end