class CreateAlumnos < ActiveRecord::Migration[5.2]
  def change
    create_table :alumnos do |t|
      t.references :user, foreign_key: true
      t.references :postulante, foreign_key: true
      t.string :usuario
      t.string :contrasenha
      t.string :confir_contra
      t.string :nombre
      t.string :apellido
      t.integer :cedula
      t.string :correo
      t.string :confir_correo
      t.string :carrera
      t.integer :semestre

      t.timestamps
    end
  end
end
