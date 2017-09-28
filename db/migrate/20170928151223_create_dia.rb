class CreateDia < ActiveRecord::Migration[5.1]
  def change
    create_table :dias do |t|
      t.integer :numero

      t.timestamps
    end
  end
end
