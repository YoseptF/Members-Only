class User < ApplicationRecord
  has_many :posts

  validates :username, presence: true, length: { in: 6..15 }
  validates :email, presence: true, length: { maximum: 40 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze }
  validates :password, presence: true, length: { in: 6..15 }

  has_secure_password
end
