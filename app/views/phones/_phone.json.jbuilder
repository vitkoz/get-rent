json.extract! phone, :id, :category, :area_code, :phone_number, :created_at, :updated_at
json.url phone_url(phone, format: :json)
