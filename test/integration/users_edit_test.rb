require "test_helper"

class UsersEditTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:michael)
  end

  test "unsuccessful edit" do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), params: { user: { name:  "", email: "foo@invalid", password: "foo", password_confirmation: "bar" } }
    #assert_not flash.empty?
    #assert_redirected_to edit_user_path(@user)
    #@user.reload
    #assert_equal name,  @user.name
    #assert_equal email, @user.email
  end
end
