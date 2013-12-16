require 'test_helper'

class EnrolmentsControllerTest < ActionController::TestCase
  setup do
    @enrolment = enrolments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enrolments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enrolment" do
    assert_difference('Enrolment.count') do
      post :create, enrolment: { about: @enrolment.about, career: @enrolment.career, email: @enrolment.email, follow_up: @enrolment.follow_up, github: @enrolment.github, goals: @enrolment.goals, linkedin: @enrolment.linkedin, name: @enrolment.name, phone: @enrolment.phone, reason: @enrolment.reason, study: @enrolment.study }
    end

    assert_redirected_to enrolment_path(assigns(:enrolment))
  end

  test "should show enrolment" do
    get :show, id: @enrolment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enrolment
    assert_response :success
  end

  test "should update enrolment" do
    patch :update, id: @enrolment, enrolment: { about: @enrolment.about, career: @enrolment.career, email: @enrolment.email, follow_up: @enrolment.follow_up, github: @enrolment.github, goals: @enrolment.goals, linkedin: @enrolment.linkedin, name: @enrolment.name, phone: @enrolment.phone, reason: @enrolment.reason, study: @enrolment.study }
    assert_redirected_to enrolment_path(assigns(:enrolment))
  end

  test "should destroy enrolment" do
    assert_difference('Enrolment.count', -1) do
      delete :destroy, id: @enrolment
    end

    assert_redirected_to enrolments_path
  end
end
