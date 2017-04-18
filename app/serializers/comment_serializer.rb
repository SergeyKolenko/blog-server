class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :user, :created_at
end
