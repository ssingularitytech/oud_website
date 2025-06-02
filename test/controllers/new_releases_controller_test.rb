require "test_helper"

class NewReleasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get new_releases_index_url
    assert_response :success
  end

  test "should get show" do
    get new_releases_show_url
    assert_response :success
  end
end
