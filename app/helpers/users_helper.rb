helpers do
  def users_path(user)
    if user.new_record?
      "/users"
    else
      "/users/#{user.id}"
    end
  end
end
