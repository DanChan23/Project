json.extract! payment, :id, :reservation_id, :person_id, :amount_paid, :date_paid, :created_at, :updated_at
json.url payment_url(payment, format: :json)
