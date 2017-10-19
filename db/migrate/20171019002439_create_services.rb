class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.int :service_id
      t.String :description
      t.int :manager_id

      t.timestamps
    end
  end
end
