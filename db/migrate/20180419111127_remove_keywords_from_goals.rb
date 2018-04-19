class RemoveKeywordsFromGoals < ActiveRecord::Migration[5.1]
  def change
    remove_column :goals, :keywords, :text
  end
end
