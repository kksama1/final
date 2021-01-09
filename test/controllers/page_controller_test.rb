require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  # should get home page
  test 'should get home' do
    get page_home_url
    assert_response :success
  end

  # should get page with list of masters
  test 'should get show_master page' do
    get page_show_master_url
    assert_response :success
  end

end
