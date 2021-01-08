require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get page_home_url
    assert_response :success
  end

  test "should get show_master page" do
    get page_show_master_url
    assert_response :success
  end
  
end
