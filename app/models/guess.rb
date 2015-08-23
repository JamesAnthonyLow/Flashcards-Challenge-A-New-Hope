class Guess < ActiveRecord::Base
	belongs_to :card
	belongs_to :game

	def card=(card)
		card_id = card.id
	end

	def card
		Card.find_by(id: card_id)
	end

	def correct!
		self.correct = true
		self.save
	end

end
