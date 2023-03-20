require "test_helper"

class MycartsControllerTest < ActionDispatch::IntegrationTest
  test "should get follow" do
    get mycarts_follow_url
    assert_response :success
  end

  test "should get buy" do
    get mycarts_buy_url
    assert_response :success
  end
end
