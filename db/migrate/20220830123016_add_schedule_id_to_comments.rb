class AddScheduleIdToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :schedule_id, :integer
  end
end
