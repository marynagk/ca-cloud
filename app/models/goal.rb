class Goal < ApplicationRecord
  belongs_to :user
  has_many :goals_keywords
  has_many :keywords, through: :goals_keywords
end
