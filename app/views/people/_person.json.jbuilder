json.extract! person, :id, :type, :first_name, :last_name, :dob, :ssn, :created_at, :updated_at
json.url person_url(person, format: :json)
