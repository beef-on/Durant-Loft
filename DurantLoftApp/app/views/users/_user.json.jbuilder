json.extract! user, :id, :firstName, :lastName, :year, :manner, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)
