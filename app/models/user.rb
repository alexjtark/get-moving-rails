class User < ActiveRecord::Base
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :username, length: { minimum: 4 }
  validates :email, uniqueness: true
  validates :email, presence: true
  validates :password, length: { minimum: 6 }
  has_many :boxes
  has_many :items, through: :boxes
  has_secure_password

end
