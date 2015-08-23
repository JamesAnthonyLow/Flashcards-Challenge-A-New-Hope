class Deck < ActiveRecord::Base
	validates :name, presence: true
	has_many :games
	has_many :cards

	def user=(user)
		self.creator_id = user.id
		self.save
	end

	def user
		User.find_by(id: self.creator_id)
	end

	def update_cards(params={})
		params.each_pair do |card_id, attributes|
			card = Card.find_by(id: card_id.to_s)
			if card
				card.safe_update(attributes)
			else
				card = Card.new(attributes)
				card.save
			end
		end
	end
end
