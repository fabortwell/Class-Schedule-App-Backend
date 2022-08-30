class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :time, :meeting_link, :description
  has_many :comments 
end
