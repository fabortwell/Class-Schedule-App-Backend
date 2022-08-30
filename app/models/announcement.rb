class Announcement < ApplicationRecord
    belongs_to :technical_mentor
    has_many :comments
    validates :title, :description, presence: true
end
