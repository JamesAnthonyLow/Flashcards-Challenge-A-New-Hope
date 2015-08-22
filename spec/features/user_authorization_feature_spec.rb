require_relative '../spec_helper'

feature "user_authorization" do
	before(:each) do
		@james = User.create!(username: "James", password_hash: "1234", avatar_src: "img")
	end

	after(:each) do
		User.delete_all
	end

	scenario "Allows user to login with valid password" do
			visit "/login"
			#fill_in accepts name attribute as parameter
			fill_in "username", with: "James"
			fill_in "password_hash", with: "1234"
			click_button "Log in"
			expect(page.current_path).to eq "/" #welcome page
	end

	scenario "Does not allow user to login with invalid password" do
			visit "/login"
			#fill_in accepts name attribute as parameter
			fill_in "username", with: "James"
			fill_in "password_hash", with: "5555"
			click_button "Log in"
			expect(page.current_path).to eq "/login" #or error page?
			# expect(page).to have_content("write error message")
	end

	scenario "Allows user to login as guest" do
		visit "/login"
		click_button "Guest"
		expect(page.current_path).to eq "/" #welcome page
	end
end