class AddingCityToCafes < ActiveRecord::Migration[5.1]
  def change
    add_column :cafes, :city, :string
  end
end
