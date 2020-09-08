class RemoveCampoPerson < ActiveRecord::Migration[5.2]
  def change
  	remove_column :personas, :user_id, :integer
  	remove_column :personas, :postulante_id, :integer
  end
end
