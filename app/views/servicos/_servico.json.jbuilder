json.extract! servico, :id, :Nome, :Descrição, :created_at, :updated_at
json.url servico_url(servico, format: :json)
