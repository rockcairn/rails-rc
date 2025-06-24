require "test_helper"

class PeaksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peak = Peak.create!(id: 1, name: "My Test Peak", height: 14000, description: "My Test Report", domain: "http://www.rockcairn.com/", relative_path: "/mountain/my_test_peak")
  end

  test "should get index" do
    get peaks_index_url
    assert_response :success
    assert_select "h1", "Peak List"
    assert_includes response.body, "My Test Peak"
  end

  test "should get show" do
    get root_url + "peaks/1"
    assert_response :success
    assert_includes response.body, "My Test Peak"
    assert_includes response.body, "Report Details", "Report Details should be present"
    assert_select "article header a", "Back"
  end

  # test constroler actions
  test "should not create peak without name" do
    assert_no_difference("Peak.count") do
      post peaks_url, params: { peak: { height: 14000 } }
    end

    assert_response :unprocessable_entity  # expects Rails 7/8 behavior (responds with 422)ssert_includes response.body, "can't be blank"
    assert_select "ul li", "Name can't be blank"  # looks for an error message in the response
  end
end
