json.extract! budget, :id, :city, :service_id, :adm_id, :budget_id, :price, :contracted, :created_at, :updated_at
json.url budget_url(budget, format: :json)
