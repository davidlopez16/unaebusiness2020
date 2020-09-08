class CreateNivelacademicos < ActiveRecord::Migration[5.2]
  def change
    create_table :nivelacademicos do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
