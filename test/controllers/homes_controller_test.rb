require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "get homes" do
    get root_url
    assert_response :success
    assert_select "h1", "ようこそBookersへ！"
  end
end
