class AddPreviousIpsToUser < ActiveRecord::Migration
  def change
    add_column :users, :previous_ips, :text
  end
end
