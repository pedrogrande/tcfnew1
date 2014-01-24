require 'test_helper'

class StudentSitesControllerTest < ActionController::TestCase
  setup do
    @student_site = student_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_site" do
    assert_difference('StudentSite.count') do
      post :create, student_site: { image: @student_site.image, name: @student_site.name, screenshot: @student_site.screenshot, url: @student_site.url }
    end

    assert_redirected_to student_site_path(assigns(:student_site))
  end

  test "should show student_site" do
    get :show, id: @student_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_site
    assert_response :success
  end

  test "should update student_site" do
    patch :update, id: @student_site, student_site: { image: @student_site.image, name: @student_site.name, screenshot: @student_site.screenshot, url: @student_site.url }
    assert_redirected_to student_site_path(assigns(:student_site))
  end

  test "should destroy student_site" do
    assert_difference('StudentSite.count', -1) do
      delete :destroy, id: @student_site
    end

    assert_redirected_to student_sites_path
  end
end
