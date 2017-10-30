class AddServicoRefToOrcamento < ActiveRecord::Migration[5.1]
  def change
    add_reference :orcamentos, :Servico, foreign_key: true
  end
end
