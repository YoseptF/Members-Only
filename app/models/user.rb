class User < ApplicationRecord
  has_many :posts
  
  validate :username, presence: true, length: { in: 6..15 }
  validate :email, presence: true, length: { max: 40 },
                   format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze }
  validate :password, presence: true, length: { in: 6..15 }

  has_secure_password
end
