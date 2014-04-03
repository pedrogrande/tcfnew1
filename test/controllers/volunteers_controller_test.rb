require 'test_helper'

class VolunteersControllerTest < ActionController::TestCase
  setup do
    @volunteer = volunteers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volunteers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volunteer" do
    assert_difference('Volunteer.count') do
      post :create, volunteer: { address: @volunteer.address, email: @volunteer.email, first_name: @volunteer.first_name, last_name: @volunteer.last_name, message: @volunteer.message, phone: @volunteer.phone, postcode: @volunteer.postcode, preferred_schools: @volunteer.preferred_schools, state: @volunteer.state, suburb: @volunteer.suburb }
    end

    assert_redirected_to volunteer_path(assigns(:volunteer))
  end

  test "should show volunteer" do
    get :show, id: @volunteer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @volunteer
    assert_response :success
  end

  test "should update volunteer" do
    patch :update, id: @volunteer, volunteer: { address: @volunteer.address, email: @volunteer.email, first_name: @volunteer.first_name, last_name: @volunteer.last_name, message: @volunteer.message, phone: @volunteer.phone, postcode: @volunteer.postcode, preferred_schools: @volunteer.preferred_schools, state: @volunteer.state, suburb: @volunteer.suburb }
    assert_redirected_to volunteer_path(assigns(:volunteer))
  end

  test "should destroy volunteer" do
    assert_difference('Volunteer.count', -1) do
      delete :destroy, id: @volunteer
    end

    assert_redirected_to volunteers_path
  end
end
