class AddUserIdToCafes < ActiveRecord::Migration[5.1]
  def change
    add_column :cafes, :user_id, :integer
    remove_column :cafes, :userId, :integer
  end
end