json.extract! person, :id, :name, :birthdate, :age, :address, :account_id, :contact_num, :created_at, :updated_at
json.url person_url(person, format: :json)
