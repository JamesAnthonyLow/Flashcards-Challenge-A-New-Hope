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
			Card.find_by(id: card_id.to_s).safe_update(attributes)
		end
	end
end
