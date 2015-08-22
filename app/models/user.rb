require 'bcrypt'
class User < ActiveRecord::Base
	include 'bcrypt'
	validates :username, :password_hash, presence: true
	has_many :games

	def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
