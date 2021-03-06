require 'date'

class Game < ActiveRecord::Base
	belongs_to :user
	has_many :guesses

	def deck=(deck)
		self.deck_id = deck.id
		self.save
	end

	def deck
		Deck.find_by(id: deck_id)
	end

	def cards_count
		deck.cards.count
	end


	def deck_sample
		deck.cards.reject do |card|
			card.this_games_guesses(id).any?(&:correct?)
		end.sample
	end

	def first_try_guesses
		guessed_cards = guesses.map(&:card)
		guessed_cards.reject { |card| guessed_cards.count(card) > 1 }.count
	end

	def played_on
		created_at.to_date
	end

	def time
		p self.created_at
		d = Date.parse(self.created_at.to_s)
		d.strftime("%m-%d-%Y")
	end
end
