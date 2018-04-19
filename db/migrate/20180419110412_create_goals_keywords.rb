class CreateGoalsKeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :goals_keywords do |t|
      t.references :keyword, foreign_key: true
      t.references :goal, foreign_key: true
      t.timestamps      
    end
  end
end
