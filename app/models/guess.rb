class Guess < ActiveRecord::Base
	validates :user_answer, presence: true
	has_one :card
	belongs_to :game

	def card=(card)
		card_id = card.id
	end

	def card
		Card.find_by(id: card_id)
	end
end
