require 'test_helper'

class StepSelectionsControllerTest < ActionController::TestCase
  setup do
    @step_selection = step_selections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:step_selections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create step_selection" do
    assert_difference('StepSelection.count') do
      post :create, step_selection: { challenge_id: @step_selection.challenge_id, isComplete: @step_selection.isComplete, step_id: @step_selection.step_id, user_id: @step_selection.user_id }
    end

    assert_redirected_to step_selection_path(assigns(:step_selection))
  end

  test "should show step_selection" do
    get :show, id: @step_selection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @step_selection
    assert_response :success
  end

  test "should update step_selection" do
    put :update, id: @step_selection, step_selection: { challenge_id: @step_selection.challenge_id, isComplete: @step_selection.isComplete, step_id: @step_selection.step_id, user_id: @step_selection.user_id }
    assert_redirected_to step_selection_path(assigns(:step_selection))
  end

  test "should destroy step_selection" do
    assert_difference('StepSelection.count', -1) do
      delete :destroy, id: @step_selection
    end

    assert_redirected_to step_selections_path
  end
end
