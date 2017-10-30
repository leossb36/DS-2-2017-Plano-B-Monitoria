class CreateOrcamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :orcamentos do |t|
      t.string :cidade
      t.decimal :preço
      t.boolean :contratado

      t.timestamps
    end
  end
end
