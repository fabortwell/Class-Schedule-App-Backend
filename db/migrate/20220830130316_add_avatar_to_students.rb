class AddAvatarToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :avatar, :string
  end
end
