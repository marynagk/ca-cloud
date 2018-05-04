require 'test_helper'

class ExpertisesControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @expertise = expertises(:one)
  end

  test "should get index" do
    get :index, params: { user_id: @user }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { user_id: @user }
    assert_response :success
  end

  test "should create expertise" do
    assert_difference('Expertise.count') do
      post :create, params: { user_id: @user, expertise: @expertise.attributes }
    end

    assert_redirected_to user_expertise_path(@user, Expertise.last)
  end

  test "should show expertise" do
    get :show, params: { user_id: @user, id: @expertise }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { user_id: @user, id: @expertise }
    assert_response :success
  end

  test "should update expertise" do
    put :update, params: { user_id: @user, id: @expertise, expertise: @expertise.attributes }
    assert_redirected_to user_expertise_path(@user, Expertise.last)
  end

  test "should destroy expertise" do
    assert_difference('Expertise.count', -1) do
      delete :destroy, params: { user_id: @user, id: @expertise }
    end

    assert_redirected_to user_expertises_path(@user)
  end
end
