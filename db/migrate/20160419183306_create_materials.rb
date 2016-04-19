class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :descricao
      t.integer :tipo
      t.string :patrimonio
      t.integer :usuario

      t.timestamps null: false
    end
  end
end
