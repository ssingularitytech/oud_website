require "test_helper"

class UpcomingEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get upcoming_events_index_url
    assert_response :success
  end
end
