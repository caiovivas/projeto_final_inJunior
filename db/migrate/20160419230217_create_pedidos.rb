class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.integer :id_material
      t.datetime :data
      t.string :sala

      t.timestamps null: false
    end
  end
end
