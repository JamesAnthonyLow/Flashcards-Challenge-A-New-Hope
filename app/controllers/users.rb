get "/profile/:id" do
  @user = User.find_by(id: params[:id])

	if params[:id].to_i == current_user.id
  		erb :"users/profile"
  	else
  		erb :"auth/unauth"
  	end
end
