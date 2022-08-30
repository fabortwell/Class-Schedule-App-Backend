class AddAnnouncementIdToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :announcement_id, :integer
  end
end
