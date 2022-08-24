class CreateTechnicalMentors < ActiveRecord::Migration[7.0]
  def change
    create_table :technical_mentors do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.integer :phone_no

      t.timestamps
    end
  end
end
