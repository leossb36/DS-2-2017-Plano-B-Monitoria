class CreateServicos < ActiveRecord::Migration[5.1]
  def change
    create_table :servicos do |t|
      t.string :Nome
      t.text :Descrição

      t.timestamps
    end
  end
end
