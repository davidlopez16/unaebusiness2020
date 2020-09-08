class CreatePostulantes < ActiveRecord::Migration[5.2]
  def change
    create_table :postulantes do |t|
      t.integer :cedula
      t.string :nombres
      t.string :apellidos
      t.integer :edad
      t.string :nacionalidad
      t.string :estado_civil
      t.string :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
