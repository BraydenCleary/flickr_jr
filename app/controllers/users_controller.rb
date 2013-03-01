get '/users/new' do 
  @user = User.new

  erb :users_new
end

post '/users' do 
  @user = User.new(params[:user])

  if @user.save
    session[:user_id] = @user.id
    redirect to "/users/#{@user.id}"
  else
    erb :users_new
  end
end

get '/users/:id' do 
  @user = User.find(params[:id])
  erb :users_show
end

get '/albums' do
end

get '/albums/:id' do
end

get '/albums/new' do
end

post '/albums' do
  @album = Album.new(params[:album])
  @album.user = current_user

  if @album.save
    "A-OK CAPTAIN"
  else
    "YOU SUCK"
  end
end

