class AddColumnPostulante < ActiveRecord::Migration[5.2]
  def change
  	add_column :postulantes, :fecha_nacimiento, :date
  	add_column :postulantes, :sexo, :string
  	add_column :postulantes, :mas_info, :text
  	add_column :postulantes, :idioma, :string
  end
end
