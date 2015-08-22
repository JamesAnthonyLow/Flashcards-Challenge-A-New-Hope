require_relative '../spec_helper'


describe Card do
	it 'should belong to deck' do
		 should belong_to(:deck)
	end

	it 'has many guesses' do
		 should have_many(:guesses)
	end
end

describe Deck do
	it 'has many games' do
		 should have_many(:games)
	end

	it 'has many cards' do
		 should have_many(:cards)
	end
end

describe Game do
	it 'should belong to user' do
		 should belong_to(:user)
	end

	it 'has many guesses' do
		 should have_many(:guesses)
	end
end

describe Guess do
	it 'should have one card' do
		 should have_one(:card)
	end

	it 'should belong to game' do
		 should belong_to(:game)
	end
end
