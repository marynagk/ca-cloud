json.extract! user, :id, :group, :first_name, :last_name, :email, :phone, :slack_account, :passhash, :status, :avatar, :created_at, :updated_at
json.url user_url(user, format: :json)
