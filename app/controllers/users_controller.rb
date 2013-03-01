get '/users/new' do 
  erb :users_new
end

post '/users' do 
  if params[:password1] == params[:password2]
    @user = User.new( :name => params[:name],
                      :email => params[:email])
    @user.password = params[:password]
    if @user.save
      redirect to "/users/#{@user.id}"
    else
      erb :users_new
    end
  else
    erb :users_new
  end
end

get '/users/:id' do 
  @user = User.find(params[:id])
  erb :users_show
end
