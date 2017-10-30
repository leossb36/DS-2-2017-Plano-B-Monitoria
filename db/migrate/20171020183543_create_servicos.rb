class CreateServicos < ActiveRecord::Migration[5.1]
  def change
    create_table :servicos do |t|
      t.text :descrição

      t.timestamps
    end
  end
end
