get "/profile/:id" do
	if params[:id].to_i == current_user.id
  		erb :"users/profile"
  	else
  		erb :"auth/unauth"
  	end
end