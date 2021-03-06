class GoalsController < ApplicationController
  before_action :set_user
  before_action :set_goal, only: [:show, :edit, :update, :destroy]

  # GET users/1/goals
  def index
    @goals = @user.goals
  end

  # GET users/1/goals/1
  def show
  end

  # GET users/1/goals/new
  def new
    @goal = @user.goals.build
  end

  # GET users/1/goals/1/edit
  def edit
  end

  # POST users/1/goals
  def create
    @goal = @user.goals.build(goal_params)

    if @goal.save
      redirect_to([@goal.user, @goal], notice: 'Goal was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT users/1/goals/1
  def update
    byebug
    if @goal.update_attributes(goal_params)
      redirect_to([@goal.user, @goal], notice: 'Goal was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE users/1/goals/1
  def destroy
    @goal.destroy

    redirect_to user_goals_url(@user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_goal
      @goal = @user.goals.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def goal_params
      params.require(:goal).permit(:description, keyword_ids: [])
    end
end
