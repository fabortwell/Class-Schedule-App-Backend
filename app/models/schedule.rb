class Schedule < ApplicationRecord
    has_many :comments
    has_many :students, through: :comments
    validates :title, :date, :time, :meeting_link, :description, presence: true

    include PgSearch::Model
    pg_search_scope :search_by_term,
            against: %i[title description]
end

