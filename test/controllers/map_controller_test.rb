require "test_helper"

class MapControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get map_index_url
    assert_response :success
    assert_select "h1", "Map"
  end
end
