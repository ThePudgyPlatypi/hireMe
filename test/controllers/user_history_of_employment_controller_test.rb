require 'test_helper'

class UserHistoryOfEmploymentControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get user_history_of_employment_edit_url
    assert_response :success
  end

end
