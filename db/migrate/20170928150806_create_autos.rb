class CreateAutos < ActiveRecord::Migration[5.1]
  def change
    create_table :autos do |t|
      t.integer :marca_id
      t.integer :puertas
      t.integer :persona_id
      t.boolean :rueda_respuesto
      t.string :patente

      t.timestamps
    end
  end
end
