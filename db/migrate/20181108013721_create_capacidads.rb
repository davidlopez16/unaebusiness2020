class CreateCapacidads < ActiveRecord::Migration[5.2]
  def change
    create_table :capacidads do |t|
      t.string :tipo
      t.string :nivel

      t.timestamps
    end
  end
end
