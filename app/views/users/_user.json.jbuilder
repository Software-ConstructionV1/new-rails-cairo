json.extract! user, :id, :name, :DOB, :email, :phone, :created_at, :updated_at
json.url user_url(user, format: :json)
