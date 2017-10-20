class CreateServicos < ActiveRecord::Migration[5.1]
  def change
    create_table :servicos do |t|
      t.integer :servicoId_id
      t.text :descricao

      t.timestamps
    end
  end
end
