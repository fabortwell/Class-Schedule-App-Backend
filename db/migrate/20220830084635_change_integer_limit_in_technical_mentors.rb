class ChangeIntegerLimitInTechnicalMentors < ActiveRecord::Migration[7.0]
  def change
    change_column :technical_mentors, :phone_no, :integer, limit: 8
  end
end
