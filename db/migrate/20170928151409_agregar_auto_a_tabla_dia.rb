class AgregarAutoATablaDia < ActiveRecord::Migration[5.1]
  def change
    add_column :dias, :auto_id, :integer

  end
end
