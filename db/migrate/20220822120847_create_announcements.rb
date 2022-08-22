class CreateAnnouncements < ActiveRecord::Migration[7.0]
  def change
    create_table :announcements do |t|
      t.string :title
      t.string :description
      t.integer :technical_mentor_id

      t.timestamps
    end
  end
end
