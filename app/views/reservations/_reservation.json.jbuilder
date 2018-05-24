json.extract! reservation, :id, :unit_id, :person_id, :start_date, :end_date, :status, :total_amount, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
