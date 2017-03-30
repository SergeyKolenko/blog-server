class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :user, :title, :body, presence: true
end
