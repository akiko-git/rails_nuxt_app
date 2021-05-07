require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name:"testuser",email:"test@example.com",password:"sope3klidfk")
  end
  
  test "should be vaild" do
    assert @user.valid?
  end

  test "nmae should be present" do
    @user.name = "    "
    assert_not @user.valid?
  end
end
