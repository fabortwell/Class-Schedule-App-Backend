class AnnouncementSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :technical_mentor_id, :comments
  has_many :comments
  # belongs_to :technical_mentor
end
