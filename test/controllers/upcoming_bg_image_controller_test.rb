require "test_helper"

class UpcomingBgImageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get upcoming_bg_image_index_url
    assert_response :success
  end
end
