json.extract! client, :id, :type, :name, :created_at, :updated_at
json.url client_url(client, format: :json)
