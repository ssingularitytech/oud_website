require "test_helper"

class AboutusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aboutus_index_url
    assert_response :success
  end

  test "should get show" do
    get aboutus_show_url
    assert_response :success
  end
end
