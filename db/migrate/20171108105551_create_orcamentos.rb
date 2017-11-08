class CreateOrcamentos < ActiveRecord::Migration[5.1]
  def change
    create_table :orcamentos do |t|
      t.string :cidade
      t.integer :servico_id

      t.timestamps
    end
  end
end
