class Guess < ActiveRecord::Base
	validates :user_answer, presence: true
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

	def incorrect
		self.correct = false
    self.save
	end
end
