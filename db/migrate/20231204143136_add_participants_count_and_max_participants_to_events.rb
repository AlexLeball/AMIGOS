class AddParticipantsCountAndMaxParticipantsToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :participants_count, :integer
    add_column :events, :max_participants, :integer
  end
end
