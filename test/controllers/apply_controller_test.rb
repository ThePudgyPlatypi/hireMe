require 'test_helper'

class ApplyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get apply_index_url
    assert_response :success
  end

  test "should get show" do
    get apply_show_url
    assert_response :success
  end

  test "should get new" do
    get apply_new_url
    assert_response :success
  end

  test "should get edit" do
    get apply_edit_url
    assert_response :success
  end

  test "should get delete" do
    get apply_delete_url
    assert_response :success
  end

end
