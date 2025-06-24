require "test_helper"

class PressquouteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pressquoute_index_url
    assert_response :success
  end
end
