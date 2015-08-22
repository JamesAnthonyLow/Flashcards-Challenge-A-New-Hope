get '/' do
  @decks = Deck.all
  erb :index
end

get '/signup' do
  erb :"auth/signup"
end

post '/signup' do
  "worked"
end

get '/login' do
  erb :"auth/login"
end

post '/login' do
  user = User.find_by(username: params[:user][:username])
  if User.authenticate(user, params[:user][:password_hash])
 		session[:user_id] = user.id
 		redirect "/"
 	else
 		redirect "/login"
 	end
end


