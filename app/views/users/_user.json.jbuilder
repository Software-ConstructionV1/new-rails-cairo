json.extract! user, :id, :name, :date_of_birth, :email, :phone_number, :created_at, :updated_at
json.url user_url(user, format: :json)
