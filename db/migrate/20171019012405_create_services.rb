class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.integer :adm_id
      t.integer :service_id
      t.text :description

      t.timestamps
    end
  end
end
