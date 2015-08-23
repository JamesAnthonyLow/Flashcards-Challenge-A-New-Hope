get "/deck/:id" do
  @deck = Deck.find_by(id: params[:id])
  erb :"deck/show"
end

post "/deck/:id" do
  game = Game.new
  game.deck = Deck.find_by(id: params[:id])
  game.save
  redirect "/game/#{game.id}"
end

post "/game/:id/guesses" do
  @card = Card.find_by(id: params[:card_id])
  @guess = Guess.new(game_id: params[:id], card_id: params[:card_id], user_answer: params[:user_answer])
  if @card.answer == params[:user_answer]
    @guess.correct!
  else
    session[:incorrect] = "That was incorrect, the correct answer is #{@card.answer}"
    @guess.save
  end
  redirect "/game/#{params[:id]}"
end

get "/game/:id" do
  @game = Game.find_by(id: params[:id])
  @card = @game.deck_sample
  @deck = @game.deck
  @incorrect = session[:incorrect]
  session[:incorrect] = ""
  if @card
    erb :game_session
  else
    redirect "/game/#{@game.id}/score"
  end
end

post "/game/:id" do
  redirect "/game/#{params[:id]}/score"
end
