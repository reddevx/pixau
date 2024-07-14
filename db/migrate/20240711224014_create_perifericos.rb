class CreatePerifericos < ActiveRecord::Migration[7.1]
  def change
    create_table :perifericos do |t|
      t.string :nome
      t.string :price
      t.string :color
      t.boolean :rgb

      t.timestamps
    end
  end
end
