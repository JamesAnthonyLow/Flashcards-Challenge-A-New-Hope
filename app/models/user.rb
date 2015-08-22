require 'bcrypt'
class User < ActiveRecord::Base
	include BCrypt
	validates :username, presence: true
	has_many :games

	def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(user, password)
    user.password_hash == password
  end

end
