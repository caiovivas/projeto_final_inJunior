class AddInativoAoUser < ActiveRecord::Migration
  def change
    add_column :users, :inativo, :boolean
  end
end
