require 'test_helper'

class InterviewerControllerTest < ActionController::TestCase

  setup do
    @is1 = interview_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:openSessions)
    assert_not_nil assigns(:closedSessions)
    assert_equal(1, assigns(:openSessions).count)
    assert_equal(1, assigns(:closedSessions).count)
  end

  test "fails get show without an id" do
    get :show
    assert_response :error
  end

  test "should get show" do
    get :show, :id => @is1.to_param
    assert_response :success
    assert_equal(@is1, assigns(:isession))
  end



end
