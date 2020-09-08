class AddColumnPostulantes < ActiveRecord::Migration[5.2]
  def change
  	add_column :postulante, :anho_graduacion, :string
  end
end
