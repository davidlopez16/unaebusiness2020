class CreateExperienciaLaborals < ActiveRecord::Migration[5.2]
  def change
    create_table :experiencia_laborals do |t|
      t.string :nombre_empresa
      t.string :rubro_empresa
      t.string :cargo
      t.date :fecha_entrada
      t.date :fecha_salida
      t.integer :salario
      t.string :personal_a_cargo
      t.text :descripcion_tareas
      t.text :referencias

      t.timestamps
    end
  end
end
