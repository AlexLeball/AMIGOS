class AddIntroductionToRegistrations < ActiveRecord::Migration[7.1]
  def change
    add_column :registrations, :introduction, :text
  end
end
