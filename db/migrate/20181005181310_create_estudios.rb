class CreateEstudios < ActiveRecord::Migration[5.2]
  def change
    create_table :estudios do |t|
      t.references :user, foreign_key: true
      t.references :postulante, foreign_key: true
      t.string :nivel
      t.string :titulo
      t.string :institucion
      t.string :situacion

      t.timestamps
    end
  end
end
