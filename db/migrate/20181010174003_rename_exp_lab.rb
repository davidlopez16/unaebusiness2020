class RenameExpLab < ActiveRecord::Migration[5.2]
  def change
  	rename_table :exp_laboral, :exp_laborals
  end
end
