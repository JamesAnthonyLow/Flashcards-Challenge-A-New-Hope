class Game < ActiveRecord::Base
	belongs_to :user
	has_many :guesses

	def deck=(deck)
		deck_id = deck.id
	end

	def deck
		Deck.find_by(id: deck_id)
	end

	def cards_count
		deck.cards.count
	end

	def deck_sample
		deck.cards.reject do |card| 
			card.guesses.any? do |guess|
				guess.correct? && self == guess.game
			end
		end.sample
	end

	# def guesses_correct_first_try
	# 	guesses.map(&:card)
	# end


end
