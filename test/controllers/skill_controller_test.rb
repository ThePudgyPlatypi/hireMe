require 'test_helper'

class SkillControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get skill_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get skill_destroy_url
    assert_response :success
  end

end
