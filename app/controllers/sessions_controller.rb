get '/sessions/new' do
  erb :sessions_new
end

post '/sessions' do
  @user = User.find_by_email(params[:email])
  if @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect to "/users/#{@user.id}"
  else
    @user.errors.add(:password, 'Incorrect email/password combination')
    erb :sessions_new
  end
end

get '/logout' do
  session.delete(:user_id)
  redirect to '/'
end
