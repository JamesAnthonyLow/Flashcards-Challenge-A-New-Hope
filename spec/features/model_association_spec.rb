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
