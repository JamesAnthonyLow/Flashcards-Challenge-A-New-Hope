get "/deck/:id/card/new" do
  @deck = Deck.find_by(id: params[:id])
  @add_card = true
  erb :"deck/create_deck"
end

post "/deck/:id/card/new" do
  @deck = Deck.find_by(id: params[:id])
  @deck.update_cards(params[:cards]) if params[:cards]
  redirect "/deck/#{@deck.id}/card/new"
end
