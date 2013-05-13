class AddAssignmentIdToAsset < ActiveRecord::Migration
  def change
    add_column :assets, :assignment_id, :integer
  end
end
