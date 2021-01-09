require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # should not create user with same params twice
  test 'should not create user with same params twice' do
    email = 'testUsr@mail.com'
    pass = 'testUsr'
    pass_c = 'testUsr'
    role = 1
    user = User.create(email: email, password: pass, password_confirmation: pass_c, role: role)
    user.save
    user2 = User.create(email: email, password: pass, password_confirmation: pass_c, role: role)
    assert !user2.save
    user.destroy
    user2.destroy
  end


end
