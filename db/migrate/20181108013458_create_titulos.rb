class CreateTitulos < ActiveRecord::Migration[5.2]
  def change
    create_table :titulos do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
