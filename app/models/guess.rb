class Guess < ActiveRecord::Base
	validates :user_answer, presence: true
	has_one :card
	belongs_to :game
end
