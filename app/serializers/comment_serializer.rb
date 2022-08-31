class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :likes, :student, :schedule_id, :announcement_id
  has_one :student
end
