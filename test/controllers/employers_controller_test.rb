require 'test_helper'

class EmployersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employers_index_url
    assert_response :success
  end

  test "should get show" do
    get employers_show_url
    assert_response :success
  end

  test "should get edit" do
    get employers_edit_url
    assert_response :success
  end

  test "should get delete" do
    get employers_delete_url
    assert_response :success
  end

  test "should get new" do
    get employers_new_url
    assert_response :success
  end

end
