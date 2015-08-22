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
			expect{@guess.correct!}.should change { @guess.correct? }.from(false).to(true)
		end
	end
end