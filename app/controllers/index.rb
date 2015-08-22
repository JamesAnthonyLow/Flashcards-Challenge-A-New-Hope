get '/' do
  @decks = Deck.all
  erb :index
end

get '/signup' do
  erb :"auth/signup"
end

post '/signup' do
  user = User.new(username: params[:user])
  if user.save!
    session[:user] = user
    redirect "/"
  else
    redirect "/signup"
  end
end

get '/login' do
  erb :"auth/login"
end

post '/login' do
  "worked"
end


