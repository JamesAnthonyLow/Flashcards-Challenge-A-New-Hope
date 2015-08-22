require_relative '../spec_helper'


describe "Guess model" do
	before(:each) do
		@guess = Guess.create!(user_answer: "sample")
	end

	after(:each) do
		Guess.delete_all
	end
	describe "#correct!" do
		it "changes the default value from false to true" do
			@guess.correct!
			expect(@guess.correct?).to be_truthy
		end
	end
end