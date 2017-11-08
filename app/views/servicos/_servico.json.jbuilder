json.extract! servico, :id, :nome, :descrição, :preço, :created_at, :updated_at
json.url servico_url(servico, format: :json)
