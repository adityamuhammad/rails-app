require 'test_helper'

class UsersShowTestTest < ActionDispatch::IntegrationTest
  def setup
    @activated_user = users(:michael)
    @unactivated_user = users(:lana)
  end

  test "should not redirect root url when user activated" do
    get user_path @activated_user
    assert_template "users/show"
  end

  test "should redirect root url when user unactivated" do
    get user_path(@unactivated_user)
    assert_redirected_to root_url
  end

end
