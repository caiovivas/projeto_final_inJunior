class AddEntregaToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :entrega, :time
    add_column :pedidos, :usuario, :integer
  end
end
