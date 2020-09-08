class AddColumnEstudios < ActiveRecord::Migration[5.2]
  def change
  	add_column :estudios, :anho_graduacion, :string
  end
end
