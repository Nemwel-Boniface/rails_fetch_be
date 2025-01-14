json.status do
  json.code 200
  json.message 'Logged in successfully to the Rails Fetch application.'
  json.data do
    json.user do
      json.id current_user.id
      json.email current_user.email
      json.username current_user.username
      json.photo current_user.photo
      json.token current_user.generate_jwt_token
    end
  end
end
