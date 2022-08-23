class Comment < ApplicationRecord
    #Associations
    belongs_to :student, optional: true
    belongs_to :schedule, optional: true

    #validations 
    validates :content, presence: true 
    validates :likes, numericality: { greater_than_or_equal_to: 0 }
end