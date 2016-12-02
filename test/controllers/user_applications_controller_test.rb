require 'test_helper'

class UserApplicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_applications_index_url
    assert_response :success
  end

  test "should get show" do
    get user_applications_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_applications_edit_url
    assert_response :success
  end

  test "should get new" do
    get user_applications_new_url
    assert_response :success
  end

end
