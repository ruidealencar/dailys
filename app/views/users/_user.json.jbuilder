json.extract! user, :id, :admin, :team_id, :name, :created_at, :updated_at
json.url user_url(user, format: :json)
