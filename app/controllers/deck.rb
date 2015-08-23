get "/deck/new" do
  @user = User.find_by(id: session[:user_id])

  erb :"deck/create_deck"
end

post "/deck" do
  @deck = Deck.find_or_initialize_by(params[:deck])
  @deck.save if @deck.valid?
  #refactor for bad input and for easier initialization
  @deck.update_cards(params[:cards]) if params[:cards]
  redirect "/deck/#{@deck.id}/card/new"
end

get "/deck/:id/card/new" do
  @deck = Deck.find_by(id: params[:id])
  @deck.update_attributes(params[:deck])
  @deck.update_cards(params[:cards]) if params[:cards]
  @add_card = true
  erb :"deck/create_deck"
end

post "/deck/:id/final" do
  @deck = Deck.find_by(id: params[:id])
  @deck.update_cards(params[:cards]) if params[:cards]
  if @deck.update_attributes(params[:deck])
    redirect "/"
  else
    redirect "/deck/#{@deck.id}/card/new"
  end
end


