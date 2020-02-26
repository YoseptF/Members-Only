class Post < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: { in: 5..150 }
end
