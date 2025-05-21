require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "user has to have username" do
    user = FactoryBot.build(:user, username: nil)

    assert_not user.save, "User should not be saved without a username"
  end

  test "user has to have unique username" do
    user1 = FactoryBot.create(:user)
    user2 = FactoryBot.build(:user, username: user1.username)

    assert_not user2.save, "User should not be saved with a duplicate username"
  end
end
