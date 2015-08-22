get "/game/:id" do
  p @game = Game.find(params[:id])
  p @card = @game.deck_sample
  p @deck = Deck.find_by(id: @game.deck_id)

  if @card
    redirect "/game/#{@game.id}/card/#{@card.id}"
  else
    redirect "/game/#{@game.id}/score"
  end
end

get "/game/:game_id/card/:id" do
  @game = Game.find(params[:game_id])
  @card = Card.find(params[:id])
  @deck = Deck.find_by(id: @card.deck_id)

  erb :game_session
end

post "/game/:game_id/card/:id" do
  @game = Game.find(params[:game_id])
  @answer = Card.find(params[:id]).answer

  @guess = params["guess"]

  if @guess == @answer
    Guess.find_or_create_by(game_id: @game.id, card_id: params[:id], user_answer: @guess, correct: true)
  else
    Guess.find_or_create_by(game_id: @game.id, card_id: params[:id], user_answer: @guess, correct: false)
  end

  redirect "/game/#{@game.id}"
end
