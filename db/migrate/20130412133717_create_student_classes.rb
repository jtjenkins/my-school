class CreateStudentClasses < ActiveRecord::Migration
  def change
    create_table :student_classes do |t|
      t.integer :student_id
      t.integer :classroom_id

      t.timestamps
    end
  end
end
