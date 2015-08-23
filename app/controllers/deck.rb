get "/deck/new" do
  @user = User.find_by(id: session[:user_id])

  erb :"deck/create_deck"
end

post "/deck" do
  name = params[:deck_name]
  user_id = params[:user_id]
  deck_img = params[:deck_img]
  @deck = Deck.create(name: name, creator_id: user_id, deck_img: deck_img)

  redirect "/deck/#{@deck.id}"
end

get "/deck/:id/card/new" do

end
