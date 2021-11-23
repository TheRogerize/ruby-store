require "test_helper"

class ErrorsControllerTest < ActionDispatch::IntegrationTest
  test "should get sign" do
    get errors_sign_url
    assert_response :success
  end
end
