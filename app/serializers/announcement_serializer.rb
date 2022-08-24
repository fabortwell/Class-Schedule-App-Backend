class AnnouncementSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  # belongs_to :technical_mentor
end
