require 'spec_helper'

describe "Score Controller" do 

	before(:each) do
		@game = Game.create!
		@game.guesses << Array.new(8) { Guess.create!(user_answer: "nonsense", correct: [true, false].sample) }
		deck = Deck.create!(name: "random flashcards")
		deck.cards << Array.new(8) { Card.create!(answer: "nonsense", question: "more nonsense")}
		@game.deck = deck
	end

	after(:each) do
		Game.delete_all
		Deck.delete_all
	end

	describe "displays score" do
		let(:game) { @game }
		it "includes score info" do
			get "game/#{@game.id}/score"
			# expect(last_response.body).to include(game.deck.name)
			expect(last_response.body).to include(game.first_try_guesses)
			expect(last_response.body).to include(game.cards_count)
			expect(last_response.body).to include(game.guesses.count)
		end
	end
end