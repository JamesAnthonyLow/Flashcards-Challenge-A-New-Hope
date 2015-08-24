post "/users" do
	user = User.new(params)
	if user.save
		login(user)
		redirect "/"
	else
		redirect "/signup"
	end
end

get "/users/:id" do
  @user = User.find_by(id: params[:id])
	if params[:id].to_i == current_user.id
  		erb :"users/profile"
  	else
  		erb :"auth/unauth"
  	end
end
