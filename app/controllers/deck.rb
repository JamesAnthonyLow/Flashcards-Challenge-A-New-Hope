get "/deck/new" do
  erb :"deck/create_deck"
end

post "/deck" do
  name = params[:deck_name]
  @deck = Deck.create(name: name, creator_id: params[:user_id])

  redirect "/deck/#{@deck.id}"
end
