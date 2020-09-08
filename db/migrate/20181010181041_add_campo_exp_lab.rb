class AddCampoExpLab < ActiveRecord::Migration[5.2]
  def change
  	add_column :exp_laborals, :user, :string
  	add_column :exp_laborals, :postulante, :string
  end
end
