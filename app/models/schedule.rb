class Schedule < ApplicationRecord
    has_many :comments
    has_many :students, through: :comments
    validates :title, :date, :time, :meeting_link, :description, presence: true
end

