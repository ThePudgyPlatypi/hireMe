require 'test_helper'

class UserHistoryOfEducationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_history_of_educations_new_url
    assert_response :success
  end

  test "should get create" do
    get user_history_of_educations_create_url
    assert_response :success
  end

  test "should get delete" do
    get user_history_of_educations_delete_url
    assert_response :success
  end

  test "should get show" do
    get user_history_of_educations_show_url
    assert_response :success
  end

end
