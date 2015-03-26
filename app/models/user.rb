

class User < ActiveRecord::Base
  
  attr_accessor :password
 
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, :presence => true, :uniqueness => true, format: { with: VALID_EMAIL_REGEX }
  validates :password, :presence => true, :confirmation => true

  before_save :encrypt_password
  after_save :clear_password
  
  def encrypt_password
    if password.present?
      self.salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, salt)
    end
  end
  
  def clear_password
    self.password = nil
  end
  
  

	def self.authenticate(email, password)
	  user = find_by_email(email)
	  if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.salt)
		user
	  else
		nil
	  end
	end


  

end

