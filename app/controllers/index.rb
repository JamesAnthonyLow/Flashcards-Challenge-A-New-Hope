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
  "worked"
end


