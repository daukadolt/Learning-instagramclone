class User < ApplicationRecord

  has_secure_password
  has_many :posts

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :login, presence: true, uniqueness: true, length: {minimum: 3, maximum: 12}
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: VALID_EMAIL_REGEX
  validates :password, length: {minimum: 6}

   def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private
  def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
  end

  #before_save self.email = email.downcase



# private
#
#   def abc
#     before_save self.email = email.downcase
#   end

end
