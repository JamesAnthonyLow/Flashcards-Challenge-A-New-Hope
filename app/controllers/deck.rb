get "/deck/new" do
  @user = User.find_by(id: session[:user_id])

  erb :"deck/create_deck"
end

post "/deck" do
  name = params[:deck_name]
  user_id = params[:user_id]
  deck_img = params[:deck_img]
  @deck = Deck.create(name: name, creator_id: user_id, deck_img: deck_img)
  @deck.cards << Card.new
  #refactor for bad input and for easier initialization
  redirect "/deck/#{@deck.id}/card/new"
end

get "/deck/:id/card/new" do
  @deck = Deck.find_by(id: params[:id])
  erb :"/card/create_card"
end

post "/deck/:id/card" do
  deck = Deck.find_by(id: params[:id])
  card = Card.create(question: params[:question], answer: params[:answer])
  deck.cards << card

  if params[:submit]
    redirect "/deck/#{deck.id}/card/new"
  else params[:complete]
    redirect "/"
  end
end

