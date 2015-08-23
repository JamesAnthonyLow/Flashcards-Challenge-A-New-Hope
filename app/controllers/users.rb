get "/profile/:id" do
	if params[:id] == current_user.id	
  		user = User.find_by(id: session[:user_id])
  		erb :"users/profile", locals: {user: user}
  	else
  		erb :"auth/unauth"
  	end
end