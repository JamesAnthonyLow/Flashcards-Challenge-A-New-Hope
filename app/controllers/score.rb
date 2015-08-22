#score controller

get "game/:id/score" do 
	@game = Game.find_by(id: params[:id])
	@deck = Deck.find_by(id: @game.deck_id)
	erb :"scores/show"
end