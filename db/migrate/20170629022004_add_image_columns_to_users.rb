class AddImageColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_attachment :cafes, :image
  end
end
