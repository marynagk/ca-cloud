class GoalKeywordsController < ApplicationController
  def create
    @goal_keyword = @goal.goal_keywords.build(goal_keyword_params)
  end

  def goal_keyword_params
    params.require(:goal_keyword).permit(:keyword_id, :goal_id)
  end
end
