json.extract! persona, :id, :user_id, :postulante_id, :usuario, :contrasenha, :confir_contra, :nombre, :apellido, :cedula, :correo, :confir_correo, :carrera, :semestre, :created_at, :updated_at
json.url persona_url(persona, format: :json)
