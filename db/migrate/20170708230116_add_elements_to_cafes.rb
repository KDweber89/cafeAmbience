class AddElementsToCafes < ActiveRecord::Migration[5.1]
  def change
    add_column :cafes, :price, :integer
    add_column :cafes, :food, :string
    add_column :cafes, :yelp_link, :string
  end
end
