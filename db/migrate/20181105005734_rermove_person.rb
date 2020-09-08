class RermovePerson < ActiveRecord::Migration[5.2]
  def change
  	remove_column :personas, :contrasenha, :string
  	remove_column :personas, :confir_contra, :string
  	remove_column :personas, :confir_correo, :string
  end
end
