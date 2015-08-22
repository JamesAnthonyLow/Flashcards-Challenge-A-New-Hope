require_relative '../spec_helper'

feature "user_authorization" do
	before(:each) do
		@james = User.create!(username: "James", password_hash: "1234", avatar_src: "img")
	end

	after(:each) do
		User.delete_all
	end

	scenario "Allows user to login" do
			visit "/user/login/"
			#fill_in accepts name attribute as parameter
			fill_in "username", with: "James"
			fill_in "password_hash", with: "1234"
			click_button "Log in"
			expect(page.current_path).to eq "/" #welcome page
	end
end