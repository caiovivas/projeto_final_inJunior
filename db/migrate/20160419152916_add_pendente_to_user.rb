class AddPendenteToUser < ActiveRecord::Migration
  def change
    add_column :users, :pendente, :boolean
  end
end
