class Card < ActiveRecord::Base
	validates :question, :answer, presence: true
	
	belongs_to :deck
	has_many :guesses
	def this_games_guesses(game_id)
		guesses.select { |guess| guess.game_id == game_id }
	end
end
