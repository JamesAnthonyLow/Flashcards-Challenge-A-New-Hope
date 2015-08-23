get "/deck/new" do
  @deck = Deck.find_or_initialize_by(id: Deck.maximum(:id).next)
  erb :"deck/create_deck"
end

post "/deck/:id" do
  @deck = Deck.find_or_initialize_by(id: params[:id])
  @deck.creator_id = session[:user_id]
  if @deck.update_attributes(params[:deck])
    redirect "/deck/#{@deck.id}/card/new"
  else 
    redirect "/deck/new"
  end
end

get "/deck/:id/card/new" do
  @deck = Deck.find_by(id: params[:id])
  @add_card = true
  erb :"deck/create_deck"
end

post "/deck/:id/card/new" do
  @deck = Deck.find_by(id: params[:id])
  @deck.update_cards(params[:cards]) if params[:cards]
  redirect "/deck/:id/card/new"
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


