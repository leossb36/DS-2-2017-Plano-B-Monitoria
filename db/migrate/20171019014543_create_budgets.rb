class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.string :city
      t.integer :service_id
      t.integer :adm_id
      t.integer :budget_id
      t.float :price
      t.boolean :contracted

      t.timestamps
    end
  end
end
