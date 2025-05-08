require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success
    assert_select "h1", "Home"

    assert_select "li", "Get started with: Readme.md"
    assert_select "img[alt='Pallavicini Chair, Arapahoe Basin']"

    assert_select "footer a:first-of-type", "Readme.md"
    assert_select "footer a:nth-of-type(2)", "Go to rockcairn.com →"
    assert_select "footer a:nth-of-type(3)", "Go to rubyrails.org →"
  end
end
