class Deck < ActiveRecord::Base
	#ZM: Assocations come first, validatations come second
	validates :name, presence: true
	
	has_many :games
	has_many :cards
	
	#ZM: Belongs to associations
	def user=(user)
		self.creator_id = user.id
		self.save
	end

	def user
		User.find_by(id: self.creator_id)
	end

	#ZM: Look into this when you fix the safe_update method
	def update_cards(params={})
		params.each_pair do |card_id, attributes|
			card = Card.find_by(id: card_id.to_s)
			if card
				card.safe_update(attributes)
			else
				card = Card.new(attributes)
				cards << card if card.save
			end
		end
	end
end
