class CreateServicos < ActiveRecord::Migration[5.1]
  def change
    create_table :servicos do |t|
      t.text :descricao
      t.integer :servicoId_id

      t.timestamps
    end
  end
end
