class AddUnlockedAtToQuestProgresses < ActiveRecord::Migration[8.1]
  def change
    add_column :quest_progresses, :unlocked_at, :datetime
  end
end
