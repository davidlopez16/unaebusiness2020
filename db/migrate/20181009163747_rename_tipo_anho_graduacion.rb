class RenameTipoAnhoGraduacion < ActiveRecord::Migration[5.2]
  def change
  	change_column :estudios, :anho_graduacion, :date
  end
end
