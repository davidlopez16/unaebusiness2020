class CreateIdiomas < ActiveRecord::Migration[5.2]
  def change
    create_table :idiomas do |t|
      t.string :descripcion
      t.string :nivel

      t.timestamps
    end
  end
end
