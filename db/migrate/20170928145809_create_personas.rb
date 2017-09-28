class CreatePersonas < ActiveRecord::Migration[5.1]
  def change
    create_table :personas do |t|
      t.string :nombres
      t.string :apellidos
      t.date :fecha_nacimiento
      t.string :direccion

      t.timestamps
    end
  end
end
