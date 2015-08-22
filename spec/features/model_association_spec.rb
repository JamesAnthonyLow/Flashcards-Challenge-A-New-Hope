require_relative '../spec_helper'


describe Card do
	it 'should belong to deck' do
		 should belong_to(:deck)
	end

	it 'has many guesses' do
		 should have_many(:guesses)
	end

end

