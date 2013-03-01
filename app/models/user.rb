require 'bcrypt'

class User < ActiveRecord::Base
  has_secure_password

  has_many :albums
  has_many :photos
  
  validates :email, :presence => true
  # validates :password, :confirmation => true
  # validates :password_confirmation, :presence => true

  # validate :confirm_password

  # def password
  #   @password ||= Password.new(password_hash)
  # end

  # def password=(new_password)
  #   @password = Password.create(new_password)
  #   self.password_hash = @password
  # end

  # def password_confirmation
  #   Password.new(@password_confirmation)
  # end

  # def password_confirmation=(new_password)
  #   @password_confirmation = Password.create(new_password)
  # end
end
