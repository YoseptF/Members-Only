require 'test_helper'

class RootLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'main page shows all elements, before and after loggin in' do
    get root_path
    assert_template 'main/index'
    assert_select 'div.header'
    assert_select 'div.nav'
    assert_select 'div.pagination'
    assert_select 'div.footer'
    assert_select 'a[href=#]', count: 3

    login_with_user(@user)

    assert_select 'a[href=#]', count: 3
  end
end
