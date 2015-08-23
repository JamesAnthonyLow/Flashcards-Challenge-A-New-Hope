class Card < ActiveRecord::Base
	belongs_to :deck
	has_many :guesses
	def this_games_guesses(game_id)
		guesses.select { |guess| guess.game_id == game_id }
	end
	def safe_update(params)
		params.each_pair do |attribute, value|
			self.update_attribute(attribute.to_s, value) unless value == nil
		end
	end
end
