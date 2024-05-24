json.status do
  json.code 200
  json.message 'Signed up to the Rails Fetch application successfully.'
  json.data do
    json.user do
      json.id current_user.id
      json.email current_user.email
      json.username current_user.username
    end
  end
end
