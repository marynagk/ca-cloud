class Keyword < ApplicationRecord
    has_many :goal_keywords
    has_many :goals, through: :goal_keywords
end
