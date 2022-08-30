class ChangeIntegerLimitInStudents < ActiveRecord::Migration[7.0]
  def change
    change_column :students, :phone_no, :integer, limit: 8
  end
end
