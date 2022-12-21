require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]

  test "layout links" do
    get root_path
    assert_template 'homes/top'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", books_path
    assert_select "a[href=?]", signup_path
  end
end
