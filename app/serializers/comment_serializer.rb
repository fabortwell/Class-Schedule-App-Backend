class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :likes, :student
  has_one :student
  has_one :schedule
end
