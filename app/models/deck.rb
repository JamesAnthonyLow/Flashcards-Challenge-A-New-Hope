class Deck < ActiveRecord::Base
	validates :name, presence: true

	has_many :games
	has_many :cards
end
