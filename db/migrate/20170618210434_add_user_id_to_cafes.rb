class AddUserIdToCafes < ActiveRecord::Migration[5.1]
  def change
    add_column :cafes, :user_id, :integer
  end
end
