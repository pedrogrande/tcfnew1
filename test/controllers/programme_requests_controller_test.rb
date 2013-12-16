require 'test_helper'

class ProgrammeRequestsControllerTest < ActionController::TestCase
  setup do
    @programme_request = programme_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programme_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programme_request" do
    assert_difference('ProgrammeRequest.count') do
      post :create, programme_request: { email: @programme_request.email, follow_up: @programme_request.follow_up, name: @programme_request.name }
    end

    assert_redirected_to programme_request_path(assigns(:programme_request))
  end

  test "should show programme_request" do
    get :show, id: @programme_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @programme_request
    assert_response :success
  end

  test "should update programme_request" do
    patch :update, id: @programme_request, programme_request: { email: @programme_request.email, follow_up: @programme_request.follow_up, name: @programme_request.name }
    assert_redirected_to programme_request_path(assigns(:programme_request))
  end

  test "should destroy programme_request" do
    assert_difference('ProgrammeRequest.count', -1) do
      delete :destroy, id: @programme_request
    end

    assert_redirected_to programme_requests_path
  end
end
