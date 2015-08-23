get "/profile/:id" do
  user = User.find_by(id: session[:user_id])
  erb :"users/profile", locals: {user: user}
end