class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.belongs_to :student, null: false, foreign_key: true
      t.belongs_to :schedule, null: false, foreign_key: true
      t.integer :likes
 
      t.timestamps
    end
  end
end
