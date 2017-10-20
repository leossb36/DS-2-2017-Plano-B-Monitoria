json.extract! servico, :id, :descrição, :created_at, :updated_at
json.url servico_url(servico, format: :json)
