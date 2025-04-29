require "test_helper"

class PeaksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get peaks_index_url
    assert_response :success
  end

  test "should get show" do
    get peaks_show_url
    assert_response :success
  end
end
