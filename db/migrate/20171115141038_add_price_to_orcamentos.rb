class AddPriceToOrcamentos < ActiveRecord::Migration[5.1]
  def change
    add_column :orcamentos, :preco, :decimal
  end
end
