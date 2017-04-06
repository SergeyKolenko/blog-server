class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user, :post, presence: true
  validates :text, length: { maximum: 255 }, presence: true
end
