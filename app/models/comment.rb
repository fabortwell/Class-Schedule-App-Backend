class Comment < ApplicationRecord
    #Associations
    belongs_to :student
    belongs_to :schedule

    #validations 
    validates :content, presence: true 
    validates :likes, numericality: { greater_than_or_equal_to: 0 }
end