class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.string :ruc
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :email
      t.string :fundador

      t.timestamps
    end
  end
end
