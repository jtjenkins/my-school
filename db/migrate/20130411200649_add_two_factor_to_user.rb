class AddTwoFactorToUser < ActiveRecord::Migration
  def change
    add_column :users, :has_two_factor, :boolean
    add_column :users, :two_factor_method, :string
    add_column :users, :two_factor_address, :string
  end
end
