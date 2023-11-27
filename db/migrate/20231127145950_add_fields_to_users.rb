class AddFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birth_date, :date
    add_column :users, :city, :string
    add_column :users, :description, :string
    add_column :users, :creator, :boolean, default: false
  end
end
