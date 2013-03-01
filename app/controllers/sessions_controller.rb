get '/sessions/new'
  erb :sessions_new
end

post '/sessions'
  @user = User.find_by_email(params[:email])
  if @user.password == params[:password]
    session[:user_id] = @user.id
  else
    erb :sessions_new
  end
end
