class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.date :date
      t.string :time
      t.string :meeting_link
      t.string :description

      
      t.timestamps
    end
  end
end
