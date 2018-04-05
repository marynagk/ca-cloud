json.extract! user_goal, :id, :keywords, :description, :created_at, :updated_at
json.url user_goal_url(user_goal, format: :json)
