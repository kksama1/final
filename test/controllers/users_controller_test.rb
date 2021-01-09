require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  #test "should get show" do
  #  get page_show_master_path
  #  assert_response :success
  #end

  # redirecting us to "show_master" page cause we trying to get users page who doesn't have master role
  test 'should not get master page' do
    email = 'testRedir@mail.com'
    pass = 'testRedir'
    pass_c = 'testRedir'
    role = 0
    @user = User.create(email: email, password: pass, password_confirmation: pass_c, role: role)
    @id = @user.id
    get user_url(id: @id)
    assert_redirected_to page_show_master_url
  end

  # should get users page cause this user is a master
  test 'should get master page' do
    email = 'testRedir@mail.com'
    pass = 'testRedir'
    pass_c = 'testRedir'
    role = 1
    @user = User.create(email: email, password: pass, password_confirmation: pass_c, role: role)
    @id = @user.id
    get user_url(id: @id)
    assert_response :success
  end

end
