class User < ApplicationRecord
  attr_accessor :remember_token
  has_many :posts

  validates :username, presence: true, length: { in: 6..15 }
  validates :email, presence: true, length: { maximum: 40 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze }
  validates :password, presence: true, length: { in: 6..15 }

  has_secure_password

  def digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  def authenticated?(remember_token)
    return false if remember_digest.nil?

    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  def remember
    self.remember_token = SecureRandom.urlsafe_base64
    update_attribute(:remember_digest, digest(remember_token))
  end

  def forget
    self.remember_token = nil
    update_attribute(:remember_digest, nil)
  end
end
