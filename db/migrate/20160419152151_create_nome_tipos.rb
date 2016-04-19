class CreateNomeTipos < ActiveRecord::Migration
  def change
    create_table :nome_tipos do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
