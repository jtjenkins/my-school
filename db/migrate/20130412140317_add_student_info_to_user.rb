class AddStudentInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :student_id, :string
    add_column :users, :parent_id, :string
  end
end
