class RenameExper < ActiveRecord::Migration[5.2]
  def change
  	rename_table :experiencia_laborals, :exp_laboral
  end
end
