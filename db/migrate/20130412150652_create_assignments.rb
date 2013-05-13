class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.text :title
      t.text :details
      t.date :assigned_date
      t.date :due_date

      t.timestamps
    end
  end
end
