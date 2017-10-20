class AddUserRefToInfo < ActiveRecord::Migration[5.1]
  def change
    add_reference :infos, :User, foreign_key: true
  end
end
