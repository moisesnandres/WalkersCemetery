json.array!(@users) do |user|
  json.extract! user, :id, :nombres, :correo, :mensaje
  json.url user_url(user, format: :json)
end
