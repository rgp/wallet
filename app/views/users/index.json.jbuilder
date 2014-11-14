json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password_salt, :password_salted
  json.url user_url(user, format: :json)
end
