get "/game/:id/score" do
	@game = Game.find_by(id: params[:id])
  @deck = @game.deck

	erb :"scores/show"
end

get "/user/:id/scores" do
  @user = User.find_by(id: params[:id])

  erb :"users/user_scores"
end
