class User < ActiveRecord::Base
  validates :username, presence: true
  validates :email, presence: true, uniqueness: true

  has_secure_password # strictly bcrypt method
end
