class User < ApplicationRecord
  has_many :messages
  has_many :chatrooms, through: :messages
  validates :email, presence: true, uniqueness: true

  has_secure_password


end
