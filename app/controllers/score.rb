#score controller

get "game/:id/score" do 
	@game = Game.find_by(id: params[:id])
	erb :"scores/show"
end