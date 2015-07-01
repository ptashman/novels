require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "does not save without a name" do
    @user_without_name = User.new(email: "user@example.com")
    assert @user_without_name.save == false
  end

  test "does not save without an email" do
    @user_without_email = User.new(name: "John User")
    assert @user_without_email.save == false
  end

  test "does not save with a valid email" do
    @user_with_invalid_email = User.new(name: "John User", email: "foo")
    assert @user_with_invalid_email.save == false
  end

  test "does save with valid params" do
    @valid_user = User.new(name: "John User", email: "user@example.com")
    assert @valid_user.save == true
  end
end
