require 'date'

class Game < ActiveRecord::Base
	belongs_to :user
	has_many :guesses

	#ZM: AR belongs_to with class_name
	def deck=(deck)
		self.deck_id = deck.id
		self.save
	end

	#ZM: has_one :deck
	def deck
		Deck.find_by(id: deck_id)
	end

	#ZM: Thumbs up! 
	def cards_count
		deck.cards.count
	end

	#ZM: draw_card you can clean this up by keeping track of the already guessed cards
	# Whether that's on initalization, in the database, or with a AR Query 
	def deck_sample
		deck.cards.reject do |card|
			card.this_games_guesses(id).any?(&:correct?)
		#ZM: You should not be chaining on a end
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
		#ZM: Remove the p 
		p self.created_at
		d = Date.parse(self.created_at.to_s)
		#ZM: do this instead... self.created_at.strftime('%m-%d-%Y')
		d.strftime("%m-%d-%Y")
	end
end
