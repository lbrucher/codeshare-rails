require 'test_helper'

class InterviewerControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:openSessions)
    assert_not_nil assigns(:closedSessions)
    assert_equal(1, assigns(:openSessions).count)
    assert_equal(1, assigns(:closedSessions).count)
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
