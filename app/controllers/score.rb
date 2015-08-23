get "/game/:id/score" do
	@game = Game.find_by(id: params[:id])
  @deck = @game.deck
	erb :"scores/show"
end