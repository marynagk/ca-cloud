class Keyword < ApplicationRecord
    has_many :goals_keywords
    has_many :goals, through: :goals_keywords
end
