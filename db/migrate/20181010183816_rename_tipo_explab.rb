class RenameTipoExplab < ActiveRecord::Migration[5.2]
  def change
  	change_column :exp_laborals, :user, :integer
  	change_column :exp_laborals, :postulante, :integer
  end
end
