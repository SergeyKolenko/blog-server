class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :user, :title, :body, presence: true
end
