class RenameGoalsKeywordsToGoalKeywords < ActiveRecord::Migration[5.1]
  def change
  rename_table :goals_keywords, :goal_keywords
  end
end
