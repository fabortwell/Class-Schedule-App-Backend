class Announcement < ApplicationRecord
    belongs_to :technical_mentor
    validates :title, :description, presence: true
end
