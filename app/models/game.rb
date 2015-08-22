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
end
