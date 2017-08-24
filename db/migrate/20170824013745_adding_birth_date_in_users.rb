class AddingBirthDateInUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :birth_date, :date
    remove_column :users, :age, :integer
  end
end
