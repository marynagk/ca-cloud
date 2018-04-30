class GoalKeyword < ApplicationRecord
    belongs_to :goal, foreign_key: 'goal_id'
    belongs_to :keyword, foreign_key: 'keyword_id'
end
