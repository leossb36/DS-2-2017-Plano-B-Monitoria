class CreateServicos < ActiveRecord::Migration[5.1]
  def change
    create_table :servicos do |t|
      t.string :nome
      t.text :descricao
      t.decimal :preco
      t.belongs_to :orcamento, foreign_key: true

      t.timestamps
    end
  end
end
