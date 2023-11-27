class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :address
      t.string :city
      t.string :short_description
      t.string :long_description
      t.date :event_date
      t.integer :limit_participants

      t.timestamps
    end
  end
end
