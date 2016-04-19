class CreateTipoMaterials < ActiveRecord::Migration
  def change
    create_table :tipo_materials do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
