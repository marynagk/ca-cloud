class Goal < ApplicationRecord
  attr_accessor :name, :keyword_ids
  belongs_to :user
  has_many :goal_keywords
  has_many :keywords, through: :goal_keywords
  accepts_nested_attributes_for :goal_keywords
end
