class AddForeignKeyToUserCategories < ActiveRecord::Migration[7.1]
  def change
    add_reference :user_categories, :user_categories, null: false, foreign_key: true
  end
end
