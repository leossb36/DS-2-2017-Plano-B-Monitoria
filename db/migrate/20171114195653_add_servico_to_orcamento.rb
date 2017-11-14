class AddServicoToOrcamento < ActiveRecord::Migration[5.1]
  def change
    add_reference :orcamentos, :servico, foreign_key: true
  end
end
