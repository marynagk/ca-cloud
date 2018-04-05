require 'test_helper'

class GoalsControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @goal = goals(:one)
  end

  test "should get index" do
    get :index, params: { user_id: @user }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { user_id: @user }
    assert_response :success
  end

  test "should create goal" do
    assert_difference('Goal.count') do
      post :create, params: { user_id: @user, goal: @goal.attributes }
    end

    assert_redirected_to user_goal_path(@user, Goal.last)
  end

  test "should show goal" do
    get :show, params: { user_id: @user, id: @goal }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { user_id: @user, id: @goal }
    assert_response :success
  end

  test "should update goal" do
    put :update, params: { user_id: @user, id: @goal, goal: @goal.attributes }
    assert_redirected_to user_goal_path(@user, Goal.last)
  end

  test "should destroy goal" do
    assert_difference('Goal.count', -1) do
      delete :destroy, params: { user_id: @user, id: @goal }
    end

    assert_redirected_to user_goals_path(@user)
  end
end
