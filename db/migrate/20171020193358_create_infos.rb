class CreateInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :infos do |t|
      t.text :texto

      t.timestamps
    end
  end
end
