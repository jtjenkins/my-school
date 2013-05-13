class CreateClassroomAssignments < ActiveRecord::Migration
  def change
    create_table :classroom_assignments do |t|
      t.integer :classroom_id
      t.integer :assignment_id

      t.timestamps
    end
  end
end
