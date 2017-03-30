class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user, :post, presence: true
  validates :text, length: { minimum: 1, maximum: 255 }
end
