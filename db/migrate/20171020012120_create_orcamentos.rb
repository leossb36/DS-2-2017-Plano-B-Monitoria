class CreateOrcamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :orcamentos do |t|
      t.string :cidade
      t.integer :orcamentoId_id
      t.float :preco
      t.boolean :contratado

      t.timestamps
    end
  end
end
