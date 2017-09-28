class AgregarLlavesForaneas < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :dias, :autos, column: :auto_id, primary_key: :id
    add_foreign_key :autos, :marcas, column: :marca_id, primary_key: :id
    add_foreign_key :autos, :personas, column: :persona_id, primary_key: :id
  end
end
