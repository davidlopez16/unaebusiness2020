class DropTableAlumno < ActiveRecord::Migration[5.2]
  def change
  	drop_table :alumnos
  end
  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
