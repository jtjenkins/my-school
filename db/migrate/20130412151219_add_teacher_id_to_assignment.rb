class AddTeacherIdToAssignment < ActiveRecord::Migration
  def change
    add_column :assignments, :teacher_id, :int
  end
end
