class RenameTipExpLab < ActiveRecord::Migration[5.2]
  def change
  	rename_column :exp_laborals, :user, :user_id
  	rename_column :exp_laborals, :postulante, :postulante_id
  end
end
