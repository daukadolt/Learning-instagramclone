class User < ApplicationRecord

  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :login, presence: true, uniqueness: true, length: {minimum: 3, maximum: 12}
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: VALID_EMAIL_REGEX
  validates :password, length: {minimum: 6}


  #before_save self.email = email.downcase



# private
#
#   def abc
#     before_save self.email = email.downcase
#   end

end
