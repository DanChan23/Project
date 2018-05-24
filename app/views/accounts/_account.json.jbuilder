json.extract! account, :id, :username, :password, :email_add, :created_at, :updated_at
json.url account_url(account, format: :json)
