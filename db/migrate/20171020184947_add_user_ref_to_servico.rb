class AddUserRefToServico < ActiveRecord::Migration[5.1]
  def change
    add_reference :servicos, :User, foreign_key: true
  end
end
