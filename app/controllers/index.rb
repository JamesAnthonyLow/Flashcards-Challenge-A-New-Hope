require 'pry'
get '/' do
  decks = Deck.all
  erb :index, locals: {decks: decks}
end

get '/signup' do
  erb :"auth/signup"
end


get '/login' do
  erb :"auth/login"
end

post '/login' do
  user = User.find_by(username: params[:username])
  if user && user.password == params[:password]
    login(user)
    redirect "/users/#{user.id}"
  else
    redirect :'/login'
  end
end

get '/logout' do
  session.clear
  redirect "/"
end


