class AddColumnToAnnouncements < ActiveRecord::Migration[7.0]
  def change
    add_column :announcements, :technical_mentor_id, :integer
  end
end
