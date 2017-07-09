class AddingMoreFieldsToCafes < ActiveRecord::Migration[5.1]
  def change
    add_column :cafes, :street_address, :string
    add_column :cafes, :state, :string
    add_column :cafes, :editors_note, :string, limit: 300
    add_column :cafes, :website, :string
    add_column :cafes, :type, :string
  end
end

