get '/photos/new' do
  erb :photos_new
end

post '/photos' do
  photo = Photo.new
  photo.avatar = params[:image]
  photo.save
  redirect to '/photos'
end

get '/photos' do
  @photos = Photo.all
  erb :photos
end
