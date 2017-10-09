require 'test_helper'

class OtherUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get other_users_index_url
    assert_response :success
  end

  test "should get show" do
    get other_users_show_url
    assert_response :success
  end

  test "should get create" do
    get other_users_create_url
    assert_response :success
  end

end
