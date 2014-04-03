require 'test_helper'

class CodeClubSchoolsControllerTest < ActionController::TestCase
  setup do
    @code_club_school = code_club_schools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_club_schools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_club_school" do
    assert_difference('CodeClubSchool.count') do
      post :create, code_club_school: { address: @code_club_school.address, name: @code_club_school.name, postcode: @code_club_school.postcode, state: @code_club_school.state, suburb: @code_club_school.suburb }
    end

    assert_redirected_to code_club_school_path(assigns(:code_club_school))
  end

  test "should show code_club_school" do
    get :show, id: @code_club_school
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_club_school
    assert_response :success
  end

  test "should update code_club_school" do
    patch :update, id: @code_club_school, code_club_school: { address: @code_club_school.address, name: @code_club_school.name, postcode: @code_club_school.postcode, state: @code_club_school.state, suburb: @code_club_school.suburb }
    assert_redirected_to code_club_school_path(assigns(:code_club_school))
  end

  test "should destroy code_club_school" do
    assert_difference('CodeClubSchool.count', -1) do
      delete :destroy, id: @code_club_school
    end

    assert_redirected_to code_club_schools_path
  end
end
