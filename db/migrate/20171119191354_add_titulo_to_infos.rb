class AddTituloToInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :infos, :titulo, :string
  end
end
