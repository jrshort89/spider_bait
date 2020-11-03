require 'test_helper'

class FranchisesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get franchises_index_url
    assert_response :success
  end

  test "should get show" do
    get franchises_show_url
    assert_response :success
  end

  test "should get new" do
    get franchises_new_url
    assert_response :success
  end

end
