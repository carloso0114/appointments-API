class User < ApplicationRecord
  has_many :reservations

  validates :username, presence: true, length: { maximum: 20 }, uniqueness: true
end
